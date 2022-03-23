//load "rankbounds_modified.m";
//AttachSpec("g3hyptorsion-master/spec");
//Attach("g3hyptorsion-master/torsion3.m");
//Attach("g3hyptorsion-master/transformations.m");
//import "g3hyptorsion-master/transformations.m": KummerTransformation;
//etSeed(2594609949);

//Once we understand how to do this we can do it for all the curves in Guo-Yang and make a list
//with information: <D, curve f, Atkin-Lehners, genus of each quotient, rank of each quotient >.
SetDebugOnError(true);


A2<x,y>:=AffineSpace(Rationals(),2);
A3<x1,y1,z1> := AffineSpace(Rationals(),3);



GYData:=function(D,N)
  for list in GY_data do
    if list[1] eq D and list[2] eq N then
      return list;
    end if;
  end for;
end function;


FullAutomorphismListFromData:=function(curve_data)
  //Given a set of generators of the automorphism group
  //return all subgroups of the full automorphism group as a list, with Atkin-Lehner descriptions
  //Cpols are the polynomials defining C; list is a list of automorphisms.

    Cpols:=curve_data[3];
    list:=curve_data[4];

    if #Cpols eq 1 then //differentiates hyperelliptic from non-hyperelliptic
      C:=Curve(A2,Cpols);
      Cproj<X,Y,T>:=ProjectiveClosure(C);
    else
      C:=Curve(A3,Cpols);
      Cproj<X1,Y1,Z1,T1>:=ProjectiveClosure(C);
    end if;

    involutions_init:=[];
    involution_label:=[];
    for w in list do
      autw:= ProjectiveClosure(iso< C -> C | eval(w[2]), eval(w[2])>);
      Append(~involutions_init,<w[1], autw>);
    end for;

    if #Cpols eq 1 then
      Append(~involutions_init,<1, ProjectiveClosure(iso< C -> C | [x,y], [x,y]>)>);
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
    involution_groups_init := [ A : A in involution_subsets | IsDivisibleBy(#involutions, #A) and 1 in [a[1] : a in A] ];

    involution_groups:=[];
    for A in involution_groups_init do
      Append(~involution_groups, <Sort([ B[1] : B in A ]), A>);
    end for;

    return involution_groups;

end function;



//AutomorphismAffineToProjective:=function(C,W);
  //ffC<x,y>:=FunctionField(C);
  //Cpoint := GenericPoint(C);
  //CW:=eval(W);
  //auts:=Automorphisms(C);

  //wds:=[ aut : aut in auts | Coordinates(aut(Cpoint)) eq CW ];
  //assert #wds eq 1;
  //return wds[1];
//end function;



HasAdelicPointsRSY:=function(D,m)
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
end function;


AnalyticRankShimuraCurve:=function(C,DN);
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
end function;




DataToQuotientList:=function(curve_data)

  Cpols:=curve_data[3];
  list:=curve_data[4];

  if #Cpols eq 1 then //differentiates hyperelliptic from non-hyperelliptic
    C:=Curve(A2,Cpols);
    Cproj<X,Y,T>:=ProjectiveClosure(C);
    tr, Chyp:=IsHyperelliptic(C);
    assert PrimeDivisors(Integers()!Discriminant(Chyp)) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
    filename_w1:=Sprintf("ShimDB/Shim-X(%o,%o)-g%o-[1].m",curve_data[1],curve_data[2],Genus(C));
    Write(filename_w1,"A2<x,y>:=AffineSpace(Rationals(),2);\n");
  else
    C:=Curve(A3,Cpols);
    Cproj<X1,Y1,Z1,T1>:=ProjectiveClosure(C);
    filename_w1:=Sprintf("ShimDB/Shim-X(%o,%o)-[1]-g%o.m",curve_data[1],curve_data[2],Genus(C));
    Write(filename_w1,"A3<x1,y1,z1> := AffineSpace(Rationals(),3);\n");
  end if;

  Write(filename_w1,"RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;");
  Write(filename_w1,"s := rec< RF | >;");
  Write(filename_w1,Sprintf("%o %o;", "s`ShimDiscriminant := ", curve_data[1]));
  Write(filename_w1,Sprintf("%o %o;", "s`ShimLevel := ", curve_data[2]));
  Write(filename_w1,Sprintf("%o %o;", "s`ShimEquation := ", Cpols));
  Write(filename_w1,Sprintf("%o %o;\n", "s`ShimGenus := ", Genus(C)));
  Write(filename_w1,"return s;");

  automorphisms:=FullAutomorphismListFromData(curve_data);
  //auts_list := [ m[2] : m in automorphisms ];

  curve_quotients:=< <curve_data[1],curve_data[2],Cproj > >;
  //<atkin-lehner subgroup H, quotient, rank, projection: X --> X/H >;
  for i in [1..#automorphisms] do

    wd:=automorphisms[i];
    if wd[1] ne [1] then
      auts:=[ a[2] : a in wd[2] ];

        if wd[1,2] ne curve_data[5] then
           G1:=AutomorphismGroup(Cproj,auts);
           Cquo,proj:=CurveQuotient(G1);
           Cquo_genus:=Genus(Cquo);
        else
           _,Cquo:=IsGeometricallyHyperelliptic(C);
           Cquo_genus:=Genus(Cquo);
           assert Cquo_genus eq 0;
        end if;

        if Cquo_genus ge 2 then

          fx:=HyperellipticPolynomials(SimplifiedModel(ReducedMinimalWeierstrassModel(Cquo)));
          Cx:=HyperellipticCurve(fx);
          assert IsIsomorphic(Cquo,Cx);
          assert BadPrimes(Cx) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
          try
            rl, ru := RankBounds(Jacobian(Cx));
            rl; ru;
            if rl ne ru then
              rank := "NA";
              //rank := AnalyticRankShimuraCurve(Cx,curve_data[1]*curve_data[2]);
            else
              rank:=ru;
            end if;
          catch e
            rank:= "NA";
            //rank := AnalyticRankShimuraCurve(Cx,curve_data[1]*curve_data[2]);
          end try;
          Append(~curve_quotients, <wd[1], Cquo, Cquo_genus, rank,proj, [ DefiningEquations(aut) : aut in auts ]>);

        elif  Cquo_genus eq 1 then

          Cx:="NA";
          EC:=Jacobian(Cquo);
          rank:=Rank(EC);
          torsion:=GroupName(TorsionSubgroup(EC) : TeX:=true);
          fx:=HyperellipticPolynomials(IntegralModel(WeierstrassModel(EC)));
          assert IsIsomorphic(EC,EllipticCurve(fx));
          assert BadPrimes(EC) subset [2] cat PrimeDivisors(curve_data[1]*curve_data[2]);
          Append(~curve_quotients, <wd[1], Cquo, Cquo_genus,<rank,torsion>,proj,[ DefiningEquations(aut) : aut in auts ]>);

        else

          Append(~curve_quotients, <wd[1], Cquo, Cquo_genus, 0, 0, 0>);

        end if;
    end if;
  end for;

  return curve_quotients;
end function;



MakeShimDatabaseObject:=function(curve_quotients)

  CMpoints:=[];
  ModuliPoint:=[];
  disc:=curve_quotients[1,1];
  level:=curve_quotients[1,2];
  top_curve:=curve_quotients[1,3];
  ambient_size:=#Names(Ambient(top_curve));

  for i in [2..#curve_quotients] do
    quotient_list:=curve_quotients[i];
    quotient_list;
    quotient_curve:=quotient_list[2];
    wd:=quotient_list[1];
    if #wd le 2 then
      genus:=quotient_list[3];
      quotient_proj:=quotient_list[5];

      filename:=Sprintf("ShimDB/Shim-X(%o,%o)-g%o-%o.m",disc,level,genus,wd);
      Write(filename,"Rx<x>:=PolynomialRing(Rationals());");
      Write(filename,"RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;");
      Write(filename,"s := rec< RF | >;\n");

      Write(filename,Sprintf("%o %o;", "s`ShimDiscriminant := ", disc));
      Write(filename,Sprintf("%o %o;", "s`ShimLevel := ", level));
      Write(filename,Sprintf("%o %o;", "s`ShimAtkinLehner := ", wd));
      Write(filename,Sprintf("%o %o;\n", "s`ShimGenus := ", genus));

      if genus ge 2 then
        assert Type(quotient_curve) eq CrvHyp;
        f,g:=HyperellipticPolynomials(quotient_curve);
        Write(filename,Sprintf("s`ShimModel := HyperellipticCurve([Rx!%o,Rx!%o]);\n",f,g));
        Write(filename,"return s;\n");
      elif genus eq 1 then
        CX<[X]>:=quotient_curve;
        CX_eqn:=Equations(CX);
        Write(filename,Sprintf("PX<[X]>:=ProjectiveSpace(Rationals(),%o);",#X-1));
        Write(filename,Sprintf("s`ShimModel := Curve(PX,%o);\n",Equations(CX)));
        Write(filename,"return s;\n");
      else
        Write(filename,"P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);");
        P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
        g0equation:=Equation(Conic(P2,Equation(Conic(quotient_curve))));
        Write(filename,Sprintf("s`ShimModel := Conic(P2,%o);", g0equation));
        Write(filename,"return s;\n");
      end if;
      end if;
    end for;

  return "";

end function;



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



WriteShimToFile:=function(D,N)
  GY:=GYData(D,N);
  list:=DataToQuotientList(GY);
  return MakeShimDatabaseObject(list);
end function;



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
