//load "rankbounds_modified.m";
//AttachSpec("g3hyptorsion-master/spec");
//Attach("g3hyptorsion-master/torsion3.m");
//Attach("g3hyptorsion-master/transformations.m");
//import "g3hyptorsion-master/transformations.m": KummerTransformation;
//etSeed(2594609949);

//Once we understand how to do this we can do it for all the curves in Guo-Yang and make a list
//with information: <D, curve f, Atkin-Lehners, genus of each quotient, rank of each quotient >.
SetDebugOnError(true);




intrinsic GYData(D::RngIntElt,N::RngIntElt) -> Any
  {}
  for list in GYList() do
    if list[1] eq D and list[2] eq N then
      return list;
    end if;
  end for;
end intrinsic;


intrinsic FullAutomorphismListFromData(D::RngIntElt,N::RngIntElt) -> Any
  {intput: discriminant D, level N
   output: full list of <[Atkin-Lehner, Automorphisms>]
  Given a set of generators of the automorphism group
  return all subgroups of the full automorphism group as a list, with Atkin-Lehner descriptions
  Cpols are the polynomials defining C; list is a list of automorphisms.}
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
    //Cproj<X,Y,T>:=ProjectiveClosure(C);
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
  involutions:=Setseq(Set([ <SquareFreeFactorization(&*[ w[1] : w in SetToIndexedSet(W) ]), &*[ w[2] : w in SetToIndexedSet(W) ]> : W in involutions_init | not(IsEmpty(W)) ]));

  assert #involutions eq #Divisors(curve_data[1]*curve_data[2]);
  quotient_names:=[ w[1] : w in involutions ];
  ParallelSort(~quotient_names, ~involutions);
  //Remove(~involutions,1);

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
  {input: discriminant D, level N
  output: list of all Atkin-Lehners}
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



//AutomorphismAffineToProjective:=function(C,W);
  //ffC<x,y>:=FunctionField(C);
  //Cpoint := GenericPoint(C);
  //CW:=eval(W);
  //auts:=Automorphisms(C);

  //wds:=[ aut : aut in auts | Coordinates(aut(Cpoint)) eq CW ];
  //assert #wds eq 1;
  //return wds[1];
//end function;



intrinsic HasAdelicPointsRSY(D::.,m::.) -> Any
  {}
  if IsPrime(m) then
     n:=D/m;
     n:=Integers()!n;
     if LegendreSymbol(n,m) ne 1 and not(n mod 12 eq 1) and
       (not(m mod 4 eq 1) or not(n mod 4 eq 1)) then
       return true;
     else
       return false;
     end if;
  elif m eq D then
    return true;
  else
    return "somethings wrong";
  end if;
end intrinsic;


intrinsic AnalyticRankShimuraCurve(C::RngIntElt,DN::RngIntElt) -> Any
  {}
  Rz<z>:=PolynomialRing(Integers());

  M:=ModularForms(DN,2);
  newforms:=Newforms(M);
  CCforms:= [ ComplexEmbeddings(A[1])[1] : A in newforms ];

  indexnsize:=Set([ [i, #CCforms[i]] : i in [1..#CCforms] ]);
  powerseq:=[ Setseq(s) : s in Setseq(Subsets(indexnsize)) ];
  KLindices:=[ A : A in powerseq | A ne [] and &+[ B[2] : B in A ] eq Genus(C) ];

  KLforms:= [ &cat[ CCforms[i[1]] : i in indices ] : indices in KLindices ];
  assert Set([ #a : a in KLforms]) eq {Genus(C)};
  LLs:=[ [ LSeries(gg: Precision:=15) : gg in KLlist ] : KLlist in KLforms ];

  Lpolslist:=[];
  for Llist in LLs do
    Lpols:=[];
    for p in PrimesUpTo(100) do
      if GCD(p,2*DN) eq 1 then
        pol_init:=&*[ EulerFactor(g,p) : g in Llist ];
        coefs:=[ Integers()!Round(a) : a in Coefficients(pol_init) ];
        pol_new:=&+[ coefs[i]*z^(i-1) : i in [1..#coefs] ];
        Append(~Lpols,pol_new);
      end if;
    end for;
    Append(~Lpolslist,Lpols);
  end for;

  euler_polsC:=[ EulerFactor(C,p) : p in PrimesUpTo(100) | GCD(2*DN,p) eq 1 ];
  right_Ls:=[ LLs[i] : i in [1..#KLforms] | euler_polsC eq Lpolslist[i] ];
  assert #right_Ls eq 1;

  analytic_rank:= #[ a : a in [ Evaluate(LTaylor(Lser,1,0),0) : Lser in right_Ls[1] ] | Abs(a) lt 0.0000000001 ];

  return analytic_rank;
end intrinsic;



intrinsic ShimuraCurveQuotientData(D::RngIntElt,N::RngIntElt,W::SeqEnum) -> Any
  {input: discriminant D, level N, Atkin-lehners W
  Output: atkin-lehner subgroup W, quotient curve, genus, rank, projection: X --> X/H, automorphisms}

  RF := recformat< n : Integers(),
  ShimDiscriminant,
  ShimLevel,
  ShimAtkinLehner,
  ShimGenus,
  ShimModel
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
    return s;
  end if;

  automorphisms:=FullAutomorphismListFromData(D,N);
  hyp_inv_equation:= [ g[2] : g in [ b : b in automorphisms | b[1] eq [1,hyp_inv] ][1,2] | g[1] eq hyp_inv ][1];

  if <D,N,W> in {<119,1,[1,7,17,119]>, <159,1,[1,3,53,159]>,  <194,1,[1,2,97,194]>,
    <206,1,[1,2,103,206]>, <10,23,[ 1, 5, 46, 230 ]>, <10,23,[ 1, 2, 115, 230 ]>,
    <10,23,[ 1, 10, 23, 230 ]>,  <10,23,[ 1, 2, 5, 10, 23, 46, 115, 230 ]>,
    <39,2,[ 1, 2, 3, 6, 13, 26, 39, 78 ]>, <39,2,[ 1, 2, 39, 78 ]>,
    <39,2,[ 1, 3, 13, 39 ]>,<39,2,[ 1, 6, 26, 39 ]>} then
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

        if Cquo_genus ge 2 then
          fx:=HyperellipticPolynomials(SimplifiedModel(ReducedMinimalWeierstrassModel(Cquo)));
          Cx:=HyperellipticCurve(fx);
          assert IsIsomorphic(Cquo,Cx);
          assert BadPrimes(Cx) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
          s`ShimModel:=Cquo;
          s`ShimGenus:=Cquo_genus;
          //s`ShimProjectionEquations:=proj;
          //<Atkin-lehner, model, genus, rank,projection equations, automorphisms>
          //return <wd[1], Cquo, Cquo_genus, -1,proj, [ DefiningEquations(aut) : aut in auts ]>;
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
            //s`ShimProjectionEquations:=proj;
          end if;

          //Cx:="NA";
          EC:=Jacobian(Cquo);
          //rank:=Rank(EC);
          //torsion:=GroupName(TorsionSubgroup(EC) : TeX:=true);
          fx:=HyperellipticPolynomials(IntegralModel(WeierstrassModel(EC)));
          assert IsIsomorphic(EC,EllipticCurve(fx));
          assert BadPrimes(EC) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
          s`ShimModel:=Cquo;
          s`ShimGenus:=Cquo_genus;
          //return <wd[1], Cquo, Cquo_genus,<rank,torsion>,proj,[ DefiningEquations(aut) : aut in auts ]>;
          return s;
        else
          s`ShimModel:=Cquo;
          s`ShimGenus:=Cquo_genus;
          //s`ShimProjectionEquations:=proj;
          //return <wd[1], Cquo, Cquo_genus, 0, 0, 0>;
          return s;
        end if;
      catch e

        return IntermediateQuotient(D,N,W);

      end try;
    end if;
  end for;

end intrinsic;


intrinsic IntermediateQuotient(D::RngIntElt, N::RngIntElt, W::SeqEnum) -> Any
  {if the quotient doesn't work, assert the hyperelliptic involution is in
  the group, then take a proper subgroup not containing
  the hyperelliptic involution, take the quotient by this group, then ask
  if its geometrically hyperelliptic (if the genus is at least 2).}

  RF := recformat< n : Integers(),
  ShimDiscriminant,
  ShimLevel,
  ShimAtkinLehner,
  ShimGenus,
  ShimModel
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
      return s;
    end if;
  end for;
end intrinsic;


intrinsic ShimuraCurveModel(D::RngIntElt, N::RngIntElt, W::SeqEnum) -> Any
  {input: discriminant D, level N, Atkin-lehners W
  output: curve quotient X(D,N)/W }
  s:=ShimuraCurveQuotientData(D,N,W);
  return s`ShimModel;
end intrinsic;


intrinsic QuotientList(D::RngIntElt,N::RngIntElt) -> Any
  {Input: discriminant D, level N
  output: data of all quotients <atkin-lehner subgroup W, quotient curve, genus, rank, projection: X --> X/H, automorphisms>}

  atkinlehner:= AllAtkinLehners(D,N);

  list:=<>;
  for W in atkinlehner do
    Append(~list, ShimuraCurveQuotientData(D,N,W));
  end for;

  return list;
end intrinsic;


intrinsic MakeShimDBObject(D::RngIntElt, N::RngIntElt, W::SeqEnum) -> Any
  {}

  s:=ShimuraCurveQuotientData(D,N,W);
  CMpoints:=[];
  ModuliPoint:=[];
  disc:=s`ShimDiscriminant;
  level:=s`ShimLevel;
  quotient_curve:=s`ShimModel;
  wd:=s`ShimAtkinLehner;
  genus:=s`ShimGenus;

  top_curve:=ShimuraCurveModel(disc,level,[1]);
  ambient_size:=#Names(Ambient(top_curve));

/*  for i in [2..#curve_quotients] do
    quotient_list:=curve_quotients[i];
    quotient_list;
    quotient_curve:=quotient_list[2];
    wd:=quotient_list[1];
    if #wd le 2 then
      genus:=quotient_list[3];
      quotient_proj:=quotient_list[5];
*/
      filename:=Sprintf("ShimDB/Shim-X(%o,%o)-g%o-%o.m",disc,level,genus,sprint(wd));

      if wd eq [1] then
        if ambient_size eq 2 then
          Write(filename,"A2<x,y>:=AffineSpace(Rationals(),2);");
        else
          Write(filename,"A3<x1,y1,z1>:=AffineSpace(Rationals(),3);");
        end if;
      end if;

      Write(filename,"Rx<x>:=PolynomialRing(Rationals());");
      Write(filename,"RF := recformat< n : Integers(),\n ShimLabel,\n ShimDiscriminant,\n ShimLevel,\n ShimAtkinLehner,\n ShimGenus,\n ShimModel\n >;");
      Write(filename,"s := rec< RF | >;\n");
      Write(filename,Sprintf("s`ShimLabel := \"%o.%o-%o\";\n", disc, level, sprint(wd)));
      Write(filename,Sprintf("%o %o;", "s`ShimDiscriminant := ", disc));
      Write(filename,Sprintf("%o %o;", "s`ShimLevel := ", level));
      Write(filename,Sprintf("%o %o;", "s`ShimAtkinLehner := ", wd));
      Write(filename,Sprintf("%o %o;\n", "s`ShimGenus := ", genus));

      if wd eq [1] then
        Write(filename,"return s;\n");
        return "";
      end if;

      if genus ge 2 then
        assert Type(quotient_curve) eq CrvHyp;
        f,g:=HyperellipticPolynomials(quotient_curve);
        Write(filename,Sprintf("s`ShimModel := HyperellipticCurve([Rx!%o,Rx!%o]);\n",f,g));
        Write(filename,"return s;\n");
      elif genus eq 1 then
        amb_size:=#Names(Ambient(quotient_curve));
        if amb_size eq 3 then
          Write(filename,"P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);");
          Write(filename,Sprintf("s`ShimModel := Curve(P2,%o);\n",Equations(quotient_curve)));
        else
          Write(filename,"P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);");
          Write(filename,Sprintf("s`ShimModel := Curve(P3,%o);\n",Equations(quotient_curve)));
        end if;
        Write(filename,"return s;\n");
      else
        Write(filename,"P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);");
        P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
        g0equation:=Equation(Conic(P2,Equation(Conic(quotient_curve))));
        Write(filename,Sprintf("s`ShimModel := Conic(P2,%o); \n", g0equation));
        Write(filename,"return s;\n");
      end if;

  return "";

end intrinsic;



/*          quotient_rank:=quotient_list[4];
          f,g:=HyperellipticPolynomials(quotient_curve);

          Cx,mapx:=SimplifiedModel(quotient_curve);
          fx:=HyperellipticPolynomials(Cx);
          RSY:=HasPointsEverywhereLocally(fx,2);
          if Type(quotient_rank) ne MonStgElt and quotient_rank eq 0 and genus eq 2 then
            points:=Chabauty0(Jacobian(Cx));
            chabauty:="Chabauty0";
          else
            points:=Points(Cx : Bound:=10000);
            chabauty:="No Chabauty";
          end if;
          quotient_points := [ Eltseq(Inverse(mapx)(p)) :  p in Setseq(points) ];

          //printf "& & $w_{%o}$ & %o & %o & %o & %o & %o %o & %o & $y^2 = %o$ \\\\ \n", wd[1], Genus(Cquo), groupstructure, RSY, ModuliPoint, chabauty, points, CMpoints, fx;
          /*Write(filename,Sprintf("%o %o;", "s`ShimRank := ", quotient_rank));
          Write(filename,Sprintf("%o %o;", "s`ShimHasAdelicPoints := ", RSY));
          Write(filename,Sprintf("%o %o;", "s`ShimRepresentsSurface := ", ModuliPoint));
          Write(filename,Sprintf("%o %o;", "s`ShimPoints := ", quotient_points));
          Write(filename,Sprintf("s`ShimChabauty :=%o%o%o;", "\"", chabauty, "\""));
          Write(filename,Sprintf("%o %o;\n", "s`ShimCMPoints := ", CMpoints));

          if ambient_size eq 3 then
            Write(filename,"P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);");
            Write(filename,Sprintf("s`ShimTopCurve :=  Curve(P2,%o);", Equations(top_curve) ));
          else
            Write(filename,"P3<X1,Y1,Z1,T1>:=ProjectiveSpace(Rationals(),3);");
            Write(filename,Sprintf("s`ShimTopCurve :=  Curve(P3,%o);", Equations(top_curve) ));
          end if;

          //Write(filename,Sprintf("s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | %o >;", DefiningEquations(quotient_proj) ));
          Write(filename,Sprintf("s`ShimInvolutions := ["));
          for involution in quotient_list[6][1..#quotient_list[6]-1] do
            Write(filename,Sprintf("iso< s`ShimTopCurve -> s`ShimTopCurve | %o, %o >, ", involution,involution ));
          end for;
            Write(filename,Sprintf("iso< s`ShimTopCurve -> s`ShimTopCurve | %o, %o > ];", quotient_list[6][#quotient_list[6]],quotient_list[6][#quotient_list[6]]));
            Write(filename,"return s;");
          //iso< top_curve -> top_curve | quotient_list[6,2],quotient_list[6,2] >;
          //Include pullback function
          //Include 2-cover descent

        elif genus eq 1 then
          Cx:="NA";
          CX<[X]>:=quotient_curve;
          CX_eqn:=Equations(CX);

          EC:=Jacobian(quotient_curve);
          //need something different if theres no rational point
          rank:=Rank(EC);
          torsion:=TorsionSubgroup(EC);
          tors_group:=GroupName(torsion);
          f,g:=HyperellipticPolynomials(EC);

          fx:=HyperellipticPolynomials(IntegralModel(WeierstrassModel(EC)));
          assert IsIsomorphic(EC,EllipticCurve(fx));
          RSY:=HasPointsEverywhereLocally(fx,2);
          assert BadPrimes(EC) subset [2] cat PrimeDivisors(disc*level);

          //printf "& & $w_{%o}$ & %o & $\\Z^%o + %o$ & %o & %o & %o & %o & $y^2 = %o$ \\\\ \n", wd[1], Genus(Cquo), rank, torsion, RSY, ModuliPoint, points, CMpoints, fx;
          Write(filename,"Rx<x>:=PolynomialRing(Rationals());");
          Write(filename,"RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel, ShimAtkinLehner, ShimModel, ShimJacobian, ShimGenus,
          ShimMordellWeil, ShimHasAdelicPoints, ShimRepresentsSurface, ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;");
          Write(filename,"s := rec< RF | >;\n");
          Write(filename,Sprintf("PX<[X]>:=ProjectiveSpace(Rationals(),%o);",#X-1));

          Write(filename,Sprintf("%o %o;", "s`ShimDiscriminant := ", disc));
          Write(filename,Sprintf("%o %o;", "s`ShimLevel := ", level));
          Write(filename,Sprintf("%o %o;", "s`ShimAtkinLehner := ", wd));
          Write(filename,Sprintf("s`ShimModel := Curve(PX,%o);",Equations(CX)));
          Write(filename,Sprintf("s`ShimJacobian := EllipticCurve(Rx!%o,Rx!%o);",f,g));
          Write(filename,Sprintf("%o %o;", "s`ShimGenus := ", genus));
          Write(filename,Sprintf("s`ShimMordellWeil := DirectProduct(FPGroup(FreeAbelianGroup(%o)), FPGroup(Group(\"%o\")));",rank,tors_group));
          Write(filename,Sprintf("%o %o;", "s`ShimHasAdelicPoints := ", RSY));
          Write(filename,Sprintf("%o %o;", "s`ShimRepresentsSurface := ", ModuliPoint));
          Write(filename,Sprintf("%o %o;\n", "s`ShimCMPoints := ", CMpoints));

          if ambient_size eq 3 then
            Write(filename,"P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);");
            Write(filename,Sprintf("s`ShimTopCurve :=  Curve(P2,%o);", Equations(top_curve) ));
          else
            Write(filename,"P3<X1,Y1,Z1,T1>:=ProjectiveSpace(Rationals(),3);");
            Write(filename,Sprintf("s`ShimTopCurve :=  Curve(P3,%o);", Equations(top_curve) ));
          end if;
          //Write(filename,Sprintf("s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | %o >;", DefiningEquations(quotient_proj) ));
          Write(filename,Sprintf("s`ShimInvolutions := ["));
          for involution in quotient_list[6][1..#quotient_list[6]-1] do
            Write(filename,Sprintf("iso< s`ShimTopCurve -> s`ShimTopCurve | %o, %o >, ", involution,involution ));
          end for;
            Write(filename,Sprintf("iso< s`ShimTopCurve -> s`ShimTopCurve | %o, %o > ];", quotient_list[6][#quotient_list[6]],quotient_list[6][#quotient_list[6]]));
            Write(filename,"return s;");

        else

          if Type(quotient_curve) eq MonStgElt then

            infinite_points:="empty";
            RSY:=false;
            g0equation:="no equation";

            Write(filename,"RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner, ShimEquation, ShimGenus,
            ShimInfinitelyManyPoints, ShimHasAdelicPoints, ShimRepresentsSurface, ShimCMPoints  >;");
            Write(filename,"s := rec< RF | >;\n");
            Write(filename,"P3<X,Y,Z>:=PolynomialRing(Rationals(),3)\n");

            Write(filename,Sprintf("%o %o;", "s`ShimDiscriminant := ", disc));
            Write(filename,Sprintf("%o %o;", "s`ShimLevel := ", level));
            Write(filename,Sprintf("%o %o;", "s`ShimAtkinLehner := ", wd));
            Write(filename,Sprintf("%o %o;", "s`ShimEquation := ", g0equation));
            Write(filename,Sprintf("%o %o;", "s`ShimGenus := ", genus));
            Write(filename,Sprintf("%o %o;", "s`ShimInfinitelyManyPoints := ", infinite_points));
            Write(filename,Sprintf("%o %o;", "s`ShimHasAdelicPoints := ", RSY));
            Write(filename,Sprintf("%o %o;", "s`ShimRepresentsSurface := ", ModuliPoint));
            Write(filename,Sprintf("%o %o;\n", "s`ShimCMPoints := ", CMpoints));
            Write(filename,"return s;");

          else

           Cx:="NA";
           P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
           pts:=HasRationalPoint(Conic(quotient_curve));
           RSY:=pts;
           if pts eq true then infinite_points:="infty many points"; else infinite_points:="empty"; end if;
           g0equation:=Equation(Conic(P2,Equation(Conic(quotient_curve))));
           assert BadPrimes(Conic(quotient_curve)) subset [2] cat PrimeDivisors(disc*level);

           //printf "& & $w_{%o}$ & %o & %o & %o & %o & %o & %o & $%o$ \\\\ \n", wd[1], Cquo_genus, groupstructure, RSY, ModuliPoint, points, CMpoints, fx;
           Write(filename,"RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner, ShimModel, ShimGenus,
           ShimInfinitelyManyPoints, ShimHasAdelicPoints, ShimRepresentsSurface, ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;");
           Write(filename,"s := rec< RF | >;\n");
           Write(filename,"P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);");

           Write(filename,Sprintf("%o %o;", "s`ShimDiscriminant := ", disc));
           Write(filename,Sprintf("%o %o;", "s`ShimLevel := ", level));
           Write(filename,Sprintf("%o %o;", "s`ShimAtkinLehner := ", wd));
           Write(filename,Sprintf("s`ShimModel := Conic(P2,%o);", g0equation));
           Write(filename,Sprintf("%o %o;", "s`ShimGenus := ", genus));
           Write(filename,Sprintf("s`ShimInfinitelyManyPoints := %o%o%o;", "\"", infinite_points, "\"" ));
           Write(filename,Sprintf("%o %o;", "s`ShimHasAdelicPoints := ", RSY));
           Write(filename,Sprintf("%o %o;", "s`ShimRepresentsSurface := ", ModuliPoint));
           Write(filename,Sprintf("%o %o;\n", "s`ShimCMPoints := ", CMpoints));

           if ambient_size eq 3 then
             Write(filename,"P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);");
             Write(filename,Sprintf("s`ShimTopCurve :=  Curve(P2,%o);", Equations(top_curve) ));
           else
             Write(filename,"P3<X1,Y1,Z1,T1>:=ProjectiveSpace(Rationals(),3);");
             Write(filename,Sprintf("s`ShimTopCurve :=  Curve(P3,%o);", Equations(top_curve) ));
           end if;
           //Write(filename,Sprintf("s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | %o >;", DefiningEquations(quotient_proj) ));
           Write(filename,Sprintf("s`ShimInvolutions := ["));
           for involution in quotient_list[6][1..#quotient_list[6]-1] do
             Write(filename,Sprintf("iso< s`ShimTopCurve -> s`ShimTopCurve | %o, %o >, ", involution,involution ));
           end for;
             Write(filename,Sprintf("iso< s`ShimTopCurve -> s`ShimTopCurve | %o, %o > ];", quotient_list[6][#quotient_list[6]],quotient_list[6][#quotient_list[6]]));
             Write(filename,"return s;");

        end if;*/


/*
intrinsic WriteShimToFile(D::RngIntElt,N::RngIntElt) -> Any
  {}
  print "computing GYData";
  GY:=GYData(D,N);
  print "making data-quotient list";
  list:=DataToQuotientList(GY);
  print "making ShimDB object";
  return MakeShimDBObject(list);
end intrinsic;
*/


/*          for second_quotient_curve in curve_quotients do
            if (quotient_list[1] subset second_quotient_curve[1])
              and (Genus(second_quotient_curve[2]) ne 0) then

              inv_numbers:=second_quotient_curve[1];
              qqquotient_curve:=second_quotient_curve[2];
              qqquotient_rank:=second_quotient_curve[3];
              qqquotient_proj:=second_quotient_curve[4];

              if Genus(qqquotient_curve) eq 1 and qqquotient_rank eq 0 then
                ;
              elif Genus(qqquotient_curve) eq 2 and qqquotient_rank eq 0 then

                simp,map := SimplifiedModel(qqquotient_curve);
                points_simp := Chabauty0(Jacobian(simp));
                pointsG2quotient := [ Inverse(map)(P) : P in points_simp ];
                points_top_curve:=Set([ Difference(Pullback(qqquotient_proj,qqquotient_curve!Q), BaseScheme(qqquotient_proj)) : Q in pointsG2quotient ]);

                inv_numbers; qqquotient_curve;
                points_top_curve;
                //quotient_proj(Setseq(Setseq(points_top_curve)[1])[1]);

              end if;
            end if;
          end for;

          second_quotient_curves:=[]

          quotient_automorphisms:=Automorphisms(quotient_curve);
          quotientquotients:=< CurveQuotient(AutomorphismGroup(quotient_curve,[aut])) : aut in quotient_automorphisms >;
          quotientquotients:=< CC : CC in quotientquotients | Genus(CC) eq 2 >;
          quo_pullbacks:=[];
          for D in curve_quotients do
            if CrvHyp eq Type(D[2]) and Genus(D[2]) eq 2 and D[3] eq 0 then
              for CC in quotientquotients do
                if IsIsomorphic(D[2],CC) then
                  Append(~quo_pullbacks,CC);
                end if;
              end for;
            end if;
          end for;

          quo_pullbacks:=&cat[ [ CC : CC in quotientquotients | IsIsomorphic(D[2],CC) ]
           : D in curve_quotients | (Integers()!D[3] eq 0) and Genus(D[2]) eq 2 ];
          if quo_pullbacks ne [] then
            genus2quotient:=quo_pullbacks[1];

            simp,map := SimplifiedModel(genus2quotient);
            points_simp := Chabauty0(Jacobian(simp));
            pointsG2quotient := [ Inverse(map)(P) : P in points_simp ];
            points:=Set([ RationalPoints(Difference(Pullback(proj,Cquo!Q), BaseScheme(proj))) : Q in pointsG2quotient ]);
            quotient_curve;

          end if;
        end if;
      end if;
    end for;






        filename:=Sprintf("ShimDB/Shim-X(%o,%o)-<w%o>-g%o.m",curve_data[1],curve_data[2],wd[1],Cquo_genus);
        Write(filename,"R<x>:=PolynomialRing(Rationals());\n");

        if Cquo_genus eq 0 then


        elif Cquo_genus eq 1 then

        else
          //printf "& & $w_{%o}$ & %o & %o & %o & %o & %o %o & %o & $y^2 = %o$ \\\\ \n", wd[1], Genus(Cquo), groupstructure, RSY, ModuliPoint, chabauty, points, CMpoints, fx;
          Write(filename,"RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner, ShimEquation, ShimGenus,
          ShimInfinitelyManyPoints, ShimHasAdelicPoints, ShimRepresentsSurface, ShimPointSearch, ShimCMPoints >;");
          Write(filename,"s := rec< RF | >;\n");

          Write(filename,Sprintf("%o %o;", "s`ShimDiscriminant := ", curve_data[1]));
          Write(filename,Sprintf("%o %o;", "s`ShimLevel := ", curve_data[2]));
          Write(filename,Sprintf("%o %o;", "s`ShimAtkinLehner := ", wd[1]));
          Write(filename,Sprintf("%o %o;", "s`ShimEquation := ", fx));
          Write(filename,Sprintf("%o %o;", "s`ShimGenus := ", Cquo_genus));
          Write(filename,Sprintf("%o %o;", "s`ShimAnalyticRank := ", rank));
          Write(filename,Sprintf("%o %o;", "s`ShimHasAdelicPoints := ", RSY));
          Write(filename,Sprintf("%o %o;", "s`ShimRepresentsSurface := ", ModuliPoint));
          Write(filename,Sprintf("%o %o;", "s`ShimPointSearch := ", points));
          Write(filename,Sprintf("%o %o;", "s`ShimChabauty := ", chabauty));
          Write(filename,Sprintf("%o %o\n;", "s`ShimCMPoints := ", CMpoints));
          Write(filename,"return s;");
        end if;

          //if Cquo_genus eq 0 then
            //printf "& & $w_{%o}$ & %o & %o & %o & %o & %o & %o & $%o$ \\\\ \n", wd[1], Cquo_genus, groupstructure, RSY, ModuliPoint, points, CMpoints, fx;
          //elif Cquo_genus eq 1 then
          //printf "& & $w_{%o}$ & %o & $\\Z^%o + %o$ & %o & %o & %o & %o & $y^2 = %o$ \\\\ \n", wd[1], Genus(Cquo), rank, torsion, RSY, ModuliPoint, points, CMpoints, fx;
          //else
          //  printf "& & $w_{%o}$ & %o & %o & %o & %o & %o %o & %o & $y^2 = %o$ \\\\ \n", wd[1], Genus(Cquo), groupstructure, RSY, ModuliPoint, chabauty, points, CMpoints, fx;
          //end if;

    end if;
  end for;

  return "";

end function;*/
