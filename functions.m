//These are the intrinsics that will make defining equations for the curve quotients
// from the input data of a model for X_0(D,N) and an Atkin-Lehner involution.




intrinsic GYData(D::RngIntElt,N::RngIntElt) -> Any
  {Input:
    D - discriminant of quaternion algebra
    N - Level
  Ouput:
    data from Guo-Yang associated to X_0(D,N) in the form of
    <D, N, X_0(D,N) defining equations, Atkin-Lehners> }
  for list in GYList() do
    if list[1] eq D and list[2] eq N then
      return list;
    end if;
  end for;
end intrinsic;

intrinsic MultiplyAtkinLehners(W::SeqEnum) -> RngIntElt
  {Input:
    W - List of Atkin Lehner involutions w_m, indexed by m
  Output:
    n, where w_n is the product of all w_m in W}
  wm:=Integers()!1;
  for m in W do
    m1:=Integers()!m;
    wm := Integers()!(wm*m1/(GCD(wm,m1)^2));
  end for;
  return Integers()!wm;
end intrinsic;

intrinsic AtkinLehnerGenerators(W::SeqEnum) -> SeqEnum
  {
  Input:
    W - a subgroup of Atkin Lehner involutions w_m, indexed by m.
    assumes the m are sorted by size.
  Ouput:
    Generators w_m for W, indexed by m.}
  if #W eq 1 then
    return [1];
  elif #W eq 2 then
    assert 1 in W;
    return Exclude(W,1);
  elif #W eq 4 then
    assert 1 in W;
    Exclude(~W,1);
    return [W[1],W[2]];
  elif #W eq 8 then
    Exclude(~W,1);
    newW:=[W[1],W[2]];
    for i in [3..#W] do
      if MultiplyAtkinLehners(newW) ne W[i] then
        Append(~newW,W[i]);
        return newW;
      end if;
    end for;
  end if;
end intrinsic;





intrinsic FullAutomorphismListFromData(D::RngIntElt,N::RngIntElt) -> Any
  {Input:
    D - discriminant level N
    N - level
  Output:
    for each subgroup W of the Atkin-Lehner group it returns
    < [W, [ [m, w_m] : m in W ] >
    where w_m : X_0(D,N) -> X_0(D,N) is the defining equation of the involution
    }
  A2<x,y>:=AffineSpace(Rationals(),2);
  A3<x1,y1,z1> := AffineSpace(Rationals(),3);

  curve_data:=GYData(D,N);
  level:=curve_data[2];
  Cpols:=curve_data[3];
  list:=curve_data[4];


  if #Cpols eq 1 then //differentiates hyperelliptic from non-hyperelliptic
    C:=Curve(A2,Cpols);
    R<x> := PolynomialRing(Rationals());
    ff := R!Evaluate(Cpols[1],[x,0]);
    C:=HyperellipticCurve(ff);
  else
    C:=Curve(A3,Cpols);
    Cproj<X1,Y1,Z1,T1>:=ProjectiveClosure(C);
  end if;

  F<x,y>:=FunctionField(C);
  involutions_init:=[];
  involution_label:=[];
  for w in list do
    if #Cpols eq 1 then
      w_init:=eval(w[2]);
      ww:=w_init cat [1];
      autw:=iso< C -> C | ww, ww >;
      Append(~involutions_init,<w[1], autw>);
    else
      autw:= ProjectiveClosure(iso< C -> C | eval(w[2]), eval(w[2])>);
      Append(~involutions_init,<w[1], autw>);
    end if;
  end for;

  if #Cpols eq 1 then
    Append(~involutions_init,<1, iso< C -> C | [x,y,1], [x,y,1]>>);
  else
    Append(~involutions_init,<1, ProjectiveClosure(iso< C -> C | [x1,y1,z1], [x1,y1,z1]>)>);
  end if;

  involutions_init:=Setseq(Subsets(Set(involutions_init)));  //make the set of all possible subsets of involutions to compose

  //This creates all individual involutions
  involutions:=Setseq(Set([ <MultiplyAtkinLehners([ w[1] : w in SetToIndexedSet(W) ]), &*[ w[2] : w in SetToIndexedSet(W) ]> : W in involutions_init | not(IsEmpty(W)) ]));

  if N eq 1 then divs:=4; else divs:=8; end if;
  assert #involutions eq divs;
  quotient_names:=[ w[1] : w in involutions ];
  ParallelSort(~quotient_names, ~involutions);

  //Create subgroups of automorphisms from the list of involutions.
  involution_subsets := [ Setseq(A) : A in Setseq(Subsets(Set(involutions))) | #A ne 0 ];
  involution_sets_init := [ A : A in involution_subsets | IsDivisibleBy(#involutions, #A) and 1 in [a[1] : a in A] ];

  involution_groups_init:=[];
  for list in involution_sets_init do
    auts := [ a[2] : a in list];
    aut_group:=AutomorphismGroup(C,auts);
    if #auts eq #aut_group then
      Append(~involution_groups_init,list);
    end if;
  end for;

  involution_groups:=[];
  for A in involution_groups_init do
    Append(~involution_groups, <Sort([ B[1] : B in A ]), A>);
  end for;

  if level eq 1 then
    assert #involution_groups eq 5;
  else
    assert #involution_groups eq 16;
  end if;

  return involution_groups;

end intrinsic;

intrinsic AllAtkinLehners(D::RngIntElt, N::RngIntElt) -> SeqEnum
  {input:
    D - discriminant
    N - level
  output:
    list of all Atkin-Lehner subgroups W where W is a sequence
    of integers m representing w_m}
  list:=FullAutomorphismListFromData(D,N);
  sort:=function(A,B);
    if #A eq #B then
      as:=[ i : i in [1..#A] | A[i] ne B[i] ];
      if A[as[1]] gt B[as[1]] then
        return 1;
      else
        return -1;
      end if;
    else
      return #A-#B;
    end if;
  end function;

  return Sort([ a[1] : a in list ], sort);
end intrinsic;



intrinsic AtkinLehnerInvolution(D::RngIntElt,N::RngIntElt,W::SeqEnum) -> Any
  {
  Input:
    D - discriminant
    N - level
    W - sequence representing an Atkin-Lehner (must have size 2) and contain 1.
  Output:
    Atkin-Lehner involution w_m where w_m : X_0(D,N) -> X_0(D,N) is the defining equation}
  assert #W eq 2;
  assert W[1] eq 1;
  list:=FullAutomorphismListFromData(D,N);
  maps:=[ A : A in list | A[1] eq W ][1];
  map := [ A[2] : A in maps[2] | A[1] eq W[2] ][1];
  return map;
end intrinsic;





intrinsic ShimuraCurveQuotientData(D::RngIntElt,N::RngIntElt,W::SeqEnum) -> Any
  {Input:
    D - discriminant
    N - level
    W - a subgroup of Atkin Lehner involutions w_m, indexed by m.
  Output:
    a record with the data:
    atkin-lehner subgroup W, quotient curve, genus, rank, projection: X --> X/H, automorphisms}

  RF := recformat< n : Integers(),
  ShimDiscriminant,
  ShimLevel,
  ShimAtkinLehner,
  ShimGenus,
  ShimModel,
  ShimTopCurve,
  ShimProjectionEquations
  >;
  s := rec< RF | >;

  s`ShimDiscriminant := D;
  s`ShimLevel := N;
  s`ShimAtkinLehner := W;

  curve_data:=GYData(D,N);
  Cpols:=curve_data[3];
  list:=curve_data[4];

  A2<x,y>:=AffineSpace(Rationals(),2);
  A3<x1,y1,z1> := AffineSpace(Rationals(),3);

  hyp_inv:=curve_data[5];

  if #Cpols eq 1 then //differentiates hyperelliptic from non-hyperelliptic
    C:=Curve(A2,Cpols);
    R<x> := PolynomialRing(Rationals());
    ff := R!Evaluate(Cpols[1],[x,0]);
    C:=HyperellipticCurve(ff);
    assert PrimeDivisors(Integers()!Discriminant(C)) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
  else
    C:=Curve(A3,Cpols);
  end if;

  if W eq [1] then
    s`ShimGenus:=Genus(C);
    s`ShimModel:=C;
    s`ShimTopCurve:=C;
    s`ShimProjectionEquations:=IdentityAutomorphism(C);
    return s;
  end if;

  s`ShimTopCurve:=C;
  automorphisms:=FullAutomorphismListFromData(D,N);
  hyp_inv_equation:= [ g[2] : g in [ b : b in automorphisms | b[1] eq [1,hyp_inv] ][1,2] | g[1] eq hyp_inv ][1];

  if <D,N,W> in {<119,1,[1,7,17,119]>, <159,1,[1,3,53,159]>,  <194,1,[1,2,97,194]>,
    <206,1,[1,2,103,206]>, <10,23,[ 1, 5, 46, 230 ]>, <10,23,[ 1, 2, 115, 230 ]>,
    <10,23,[ 1, 10, 23, 230 ]>,  <10,23,[ 1, 2, 5, 10, 23, 46, 115, 230 ]>,
    <39,2,[ 1, 2, 3, 6, 13, 26, 39, 78 ]>, <39,2,[ 1, 2, 39, 78 ]>,
    <39,2,[ 1, 3, 13, 39 ]>,<39,2,[ 1, 6, 26, 39 ]>,<39,2,[ 1, 6, 13, 78 ]>} then
    return IntermediateQuotient(D,N,W);
  end if;

  for i in [1..#automorphisms] do
    wd:=automorphisms[i];
    if wd[1] eq W then
      try
        auts:=[ a[2] : a in wd[2] ];
        AL:=wd[1];

        if AL ne [1,hyp_inv] then
          G1:=AutomorphismGroup(C,auts);
          Cquo,proj:=CurveQuotient(G1);
          Cquo_genus:=Genus(Cquo);
        else
           _,Cquo,proj:=IsGeometricallyHyperelliptic(C);
           Cquo_genus:=Genus(Cquo);
           assert Cquo_genus eq 0;
        end if;
        s`ShimProjectionEquations:=proj;


        if Cquo_genus ge 2 then
          fx:=HyperellipticPolynomials(SimplifiedModel(ReducedMinimalWeierstrassModel(Cquo)));
          Cx:=HyperellipticCurve(fx);
          assert IsIsomorphic(Cquo,Cx);
          assert BadPrimes(Cx) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
          s`ShimModel:=Cquo;
          s`ShimGenus:=Cquo_genus;
          return s;

        elif Cquo_genus eq 1 then
          amb_size:=#Names(Ambient(Cquo));
          if amb_size eq 3 then
            P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
            if Type(Cquo) eq CrvEll then
              _,crvg1,em:= GenusOneModel(3,Cquo);
              Cquo:=Curve(P2, Equations(crvg1));
            else
              Cquo:=Curve(P2, Equations(Cquo));
            end if;
          else
            P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
            if Type(Cquo) eq CrvEll then
              _,crvg1,em:= GenusOneModel(4,Cquo);
              Cquo:=Curve(P3, Equations(crvg1));
            else
              Cquo:=Curve(P3, Equations(Cquo));
            end if;
          end if;

          EC:=Jacobian(Cquo);
          fx:=HyperellipticPolynomials(IntegralModel(WeierstrassModel(EC)));
          assert IsIsomorphic(EC,EllipticCurve(fx));
          assert BadPrimes(EC) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
          s`ShimModel:=Cquo;
          s`ShimGenus:=Cquo_genus;
          return s;
        else
          if Type(Cquo) eq Crv then
            assert Type(Cquo) eq Crv;
            con,con_map:=Conic(Cquo);
            s`ShimModel:=con;
            gf:=proj*con_map;
            dp:=DefiningPolynomials(gf);
            s`ShimProjectionEquations := map<Domain(proj) -> Codomain(con_map) | dp>;
            s`ShimGenus:=Cquo_genus;
            return s;
          elif Type(Cquo) eq CrvCon then
            s`ShimModel:=Cquo;
            s`ShimProjectionEquations:= proj;
            s`ShimGenus:=Cquo_genus;
            return s;
          end if;
        end if;
      catch e

        return IntermediateQuotient(D,N,W);

      end try;
    end if;
  end for;

end intrinsic;


intrinsic IntermediateQuotient(D::RngIntElt, N::RngIntElt, W::SeqEnum) -> Any
  {This returns the same as ShimuraCurveQuotientData() which will not work for some curves.
  in this intrinsic we require the atkin-lehner subgroup W contain the hyperelliptic involution.
  It works by taking an intermediate quotient by a proper subgroup not containing
  the hyperelliptic involution, and subsequently asking if this quotient
  is geometrically hyperelliptic (if the genus is at least 2).
  Input:
    D - discriminant
    N - level
    W - a subgroup of Atkin Lehner involutions w_m, indexed by m.
    Output:
      a record with the data:
      atkin-lehner subgroup W, quotient curve, genus, rank, projection: X --> X/H, automorphisms  }

  RF := recformat< n : Integers(),
  ShimDiscriminant,
  ShimLevel,
  ShimAtkinLehner,
  ShimGenus,
  ShimModel,
  ShimTopCurve,
  ShimProjectionEquations
  >;
  s := rec< RF | >;

  s`ShimDiscriminant := D;
  s`ShimLevel := N;
  s`ShimAtkinLehner := W;
  curve_data:=GYData(D,N);
  Cpols:=curve_data[3];
  list:=curve_data[4];

  A2<x,y>:=AffineSpace(Rationals(),2);
  A3<x1,y1,z1> := AffineSpace(Rationals(),3);

  hyp_inv:=curve_data[5];

  if #Cpols eq 1 then //differentiates hyperelliptic from non-hyperelliptic
    C:=Curve(A2,Cpols);
    R<x> := PolynomialRing(Rationals());
    ff := R!Evaluate(Cpols[1],[x,0]);
    C:=HyperellipticCurve(ff);
    assert PrimeDivisors(Integers()!Discriminant(C)) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
  else
    C:=Curve(A3,Cpols);
  end if;

  automorphisms:=FullAutomorphismListFromData(D,N);
  hyp_inv_equation:= [ g[2] : g in [ b : b in automorphisms | b[1] eq [1,hyp_inv] ][1,2] | g[1] eq hyp_inv ][1];

  wd:= [ a : a in automorphisms | a[1] eq W ][1];

  assert hyp_inv in W;
  Waut_list:=[ wd[2,i,2] : i in [1..#wd[2]] ];
  involution_subsets := [ Setseq(A) : A in Setseq(Subsets(Set(Waut_list))) | #A ne 0 ];
  involution_groups_init:=[];
  for list in involution_subsets do
    aut_group:=AutomorphismGroup(C,list);
    if #list eq #aut_group and hyp_inv_equation notin aut_group
    and #list ne 1 and #list eq #Waut_list/2 then
      Append(~involution_groups_init,list);
    end if;
  end for;

  if #Waut_list eq 4 then assert #involution_groups_init eq 2; end if;
  if #Waut_list eq 8 then assert #involution_groups_init eq 4; end if;

  for group in involution_groups_init do
    G2:=AutomorphismGroup(C,group);
    Cquo_init,proj_init:=CurveQuotient(G2);
    Cquo_genus_init:=Genus(Cquo_init);
    if Cquo_genus_init ge 2 then
      tr,Cquo,proj:=IsGeometricallyHyperelliptic(Cquo_init);
      assert tr;
      Cquo_genus:=Genus(Cquo);
      assert Cquo_genus eq 0;
      s`ShimModel:=Cquo;
      s`ShimGenus:=Cquo_genus;
      s`ShimTopCurve:=C;
      assert Type(Cquo) eq Crv;
      con,con_map:=Conic(Cquo);
      s`ShimModel:=con;
      gf:=proj_init*proj*con_map;
      dp:=DefiningPolynomials(gf);
      s`ShimProjectionEquations := map<Domain(proj_init) -> Codomain(con_map) | dp>;
      return s;
    end if;
  end for;
end intrinsic;


intrinsic ShimuraCurveModel(D::RngIntElt, N::RngIntElt, W::SeqEnum) -> Any
  {Input:
    D - discriminant
    N - level
    W - a subgroup of Atkin Lehner involutions w_m, indexed by m.
  Output:
    The defining equations of the curve quotient X(D,N)/W }
  s:=ShimuraCurveQuotientData(D,N,W);
  return s`ShimModel;
end intrinsic;


intrinsic QuotientList(D::RngIntElt,N::RngIntElt) -> Any
  {Input:
    D - discriminant
    N - level
  Output:
    data of all quotients <atkin-lehner subgroup W, quotient curve, genus, rank, projection: X --> X/H, automorphisms>}

  atkinlehner:= AllAtkinLehners(D,N);

  list:=<>;
  for W in atkinlehner do
    Append(~list, ShimuraCurveQuotientData(D,N,W));
  end for;

  return list;
end intrinsic;


intrinsic MakeShimDBObject(D::RngIntElt, N::RngIntElt, W::SeqEnum) -> Any
  {Input:
    D - discriminant
    N - level
    W - a subgroup of Atkin Lehner involutions w_m, indexed by m.
  Output:
    this intrinsic writes the attributes of the curves X_0(D,N)/W to a file with
    filename Shim-X(D,N)-g?-W.m
}

  s:=ShimuraCurveQuotientData(D,N,W);
  CMpoints:=[];
  ModuliPoint:=[];
  disc:=s`ShimDiscriminant;
  level:=s`ShimLevel;
  quotient_curve:=s`ShimModel;
  wd:=s`ShimAtkinLehner;
  genus:=s`ShimGenus;
  quotient_proj:=s`ShimProjectionEquations;

  top_curve:=ShimuraCurveModel(disc,level,[1]);
  ambient_size_top:=#Names(Ambient(top_curve));

  filename:=Sprintf("ShimDB-v1/Shim-X(%o,%o)-g%o-%o.m",disc,level,genus,sprint(wd));


  Write(filename,"Rx<x>:=PolynomialRing(Rationals());");
  Write(filename,"RF := recformat< \n ShimLabel,\n ShimDiscriminant,\n ShimLevel,\n ShimAtkinLehner,\n ShimGenus,\n ShimModel,\n ShimTopCurve,\n ShimProjectionEquations\n>;");
  Write(filename,"s := rec< RF | >;\n");
  Write(filename,Sprintf("s`ShimLabel := \"%o.%o-%o\";\n", disc, level, sprint(wd)));
  Write(filename,Sprintf("%o %o;", "s`ShimDiscriminant := ", disc));
  Write(filename,Sprintf("%o %o;", "s`ShimLevel := ", level));
  Write(filename,Sprintf("%o %o;", "s`ShimAtkinLehner := ", wd));
  Write(filename,Sprintf("%o %o;\n", "s`ShimGenus := ", genus));


  P2<[x]>:=Ambient(s`ShimTopCurve);

  if genus ge 2 then
    if IsHyperelliptic(quotient_curve) then
      Write(filename,Sprintf("s`ShimModel := %m;", quotient_curve));
    else
      assert W eq [1];
      Write(filename,Sprintf("AS<[x]> := AffineSpace(RationalField(), %o);", ambient_size_top));
      Write(filename,Sprintf("s`ShimModel:=Curve(AS, %o);", Equations(s`ShimTopCurve)));
    end if;
  elif genus eq 1 then
    amb_size:=#Names(Ambient(quotient_curve));
    if amb_size eq 3 then
      Write(filename,"P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);");
      Write(filename,Sprintf("s`ShimModel := Curve(P2,%o);\n",Equations(quotient_curve)));
    else
      Write(filename,"P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);");
      Write(filename,Sprintf("s`ShimModel := Curve(P3,%o);\n",Equations(quotient_curve)));
    end if;
  else
    Write(filename,"P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);");
    P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
    g0equation:=Equation(Conic(P2,Equation(Conic(quotient_curve))));
    Write(filename,Sprintf("s`ShimModel := Conic(P2,%o); \n", g0equation));
  end if;

  if Type(top_curve) eq CrvHyp then
    Write(filename,Sprintf("s`ShimTopCurve := %m;", top_curve));
    Write(filename,"P2<[x]>:=Ambient(s`ShimTopCurve);");
  else
    if W ne [1] then
      Write(filename,Sprintf("AS<[x]> := AffineSpace(RationalField(), %o);", ambient_size_top));
    end if;
    Write(filename,Sprintf("s`ShimTopCurve:=Curve(AS, %o);", Equations(s`ShimTopCurve)));
  end if;

  Write(filename,Sprintf("s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | %o >;", DefiningEquations(quotient_proj) ));

  Write(filename,"return s;\n");
  return "";

end intrinsic;
