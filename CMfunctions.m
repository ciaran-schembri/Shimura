
//We implement the functions from the appendix of Gonzalez-Rotger
//to determine whether a Q-rational point on an Atkin-Lehner quotient is CM

intrinsic CMOrder(s::RngIntElt,f::RngIntElt) -> Any
  {return the CM order in Q(sqrt(-s)) of conductor f}
  discs_conds:=  [
    [ 3, 1 ],
    [ 3, 4 ],
    [ 3, 5 ],
    [ 3, 7 ],
    [ 4, 1 ],
    [ 4, 3 ],
    [ 4, 4 ],
    [ 4, 5 ],
    [ 7, 1 ],
    [ 7, 4 ],
    [ 8, 1 ],
    [ 8, 2 ],
    [ 8, 3 ],
    [ 11, 1 ],
    [ 11, 3 ],
    [ 15, 1 ],
    [ 15, 2 ],
    [ 19, 1 ],
    [ 20, 1 ],
    [ 24, 1 ],
    [ 35, 1 ],
    [ 40, 1 ],
    [ 43, 1 ],
    [ 51, 1 ],
    [ 52, 1 ],
    [ 67, 1 ],
    [ 88, 1 ],
    [ 91, 1 ],
    [ 115, 1 ],
    [ 123, 1 ],
    [ 148, 1 ],
    [ 163, 1 ],
    [ 187, 1 ],
    [ 232, 1 ],
    [ 235, 1 ],
    [ 267, 1 ],
    [ 403, 1 ],
    [ 427, 1 ]
    ];
    for discs in discs_conds do
      if QuadraticField(discs[1]) eq QuadraticField(s) then
        if discs[2] eq f then
          Rx<x>:=PolynomialRing(Rationals());
          K:=NumberField(x^2+s);
          OK:=MaximalOrder(K);
          b:=Basis(OK);
          assert b[1] eq 1;
          R:=sub< OK | b[1], f*b[2] >;
          assert Conductor(R) eq f*OK;
          //assert PicardNumber(R) le 2;
          Cl,m:=RingClassGroup(R);
          assert #Cl le 2;
          HK:=NumberField(RingClassField(R));
          return <R,HK>;
        end if;
      end if;
    end for;
    return "none found";
end intrinsic;


intrinsic CMOrdersList() -> Any
  {return the full set of class number 1 and 2 fields along with their hilbert class field}
  //discs_Elkies:=[4,8,24,84,40,51,19,120,52,132,75,168,43,228,88,123,100,147,312,67,148,372,408,267,232,708,163];
discs_conds:=  [
  [ 3, 1 ],
  [ 3, 4 ],
  [ 3, 5 ],
  [ 3, 7 ],
  [ 4, 1 ],
  [ 4, 3 ],
  [ 4, 4 ],
  [ 4, 5 ],
  [ 7, 1 ],
  [ 7, 4 ],
  [ 8, 1 ],
  [ 8, 2 ],
  [ 8, 3 ],
  [ 11, 1 ],
  [ 11, 3 ],
  [ 15, 1 ],
  [ 15, 2 ],
  [ 19, 1 ],
  [ 20, 1 ],
  [ 24, 1 ],
  [ 35, 1 ],
  [ 40, 1 ],
  [ 43, 1 ],
  [ 51, 1 ],
  [ 52, 1 ],
  [ 67, 1 ],
  [ 88, 1 ],
  [ 91, 1 ],
  [ 115, 1 ],
  [ 123, 1 ],
  [ 148, 1 ],
  [ 163, 1 ],
  [ 187, 1 ],
  [ 232, 1 ],
  [ 235, 1 ],
  [ 267, 1 ],
  [ 403, 1 ],
  [ 427, 1 ]
  ];
  Rx<x>:=PolynomialRing(Rationals());
  list:=[* *];
  for T in discs_conds do
    K:=NumberField(x^2+T[1]);
    OK:=MaximalOrder(K);
    b:=Basis(OK);
    assert b[1] eq 1;
    f:=T[2];
    R:=sub< OK | b[1], T[2]*b[2] >;
    assert Conductor(R) eq f*OK;
    //assert PicardNumber(R) le 2;
    Cl,m:=RingClassGroup(R);
    assert #Cl le 2;
    HK:=NumberField(RingClassField(R));
    Append(~list,<R,HK>);
  end for;
  return list;

end intrinsic;

intrinsic CMFieldsList() -> Any
  {return the list of CM-fields}
  cmfields:=[ ];
  fund_discs:=[];
  for R in CMOrdersList() do
    K:=NumberField(R[1]);
    if not(FundamentalDiscriminant(Discriminant(K)) in fund_discs) then
      Append(~cmfields, K);
      Append(~fund_discs,FundamentalDiscriminant(Discriminant(K)));
    end if;
  end for;

  return Setseq(Set(cmfields));
end intrinsic;



intrinsic DEE(R::RngOrd,D::RngIntElt) -> RngIntElt
  {R the CM ring, D the discriminant of the quaternion algebra.}
  f:=Integers()!Index(MaximalOrder(R),R);
  assert (R meet f*MaximalOrder(R)) eq Conductor(R);
  k:=KroneckerCharacter(Discriminant(NumberField(R)));
  return &*([ p : p in PrimeDivisors(D) | GCD(f,p) eq 1 and k(p) eq -1 ] cat [1]);
end intrinsic;


intrinsic ENN(R::RngOrd,N::RngIntElt) -> RngIntElt
  {R the CM ring, N the level of the shimura curve.}
  f:=Integers()!Index(MaximalOrder(R),R);
  assert (R meet f*MaximalOrder(R)) eq Conductor(R);
  k:=KroneckerCharacter(Discriminant(NumberField(R)));
  return &*([ p : p in PrimeDivisors(N) | GCD(f,p) ne 1 or k(p) eq 1 ] cat [1]);
end intrinsic;

intrinsic ENNstar(R::RngOrd,N::RngIntElt) -> RngIntElt
  {R the CM ring, N the level of the shimura curve.}
  f:=Integers()!Index(MaximalOrder(R),R);
  assert (R meet f*MaximalOrder(R)) eq Conductor(R);
  k:=KroneckerCharacter(Discriminant(NumberField(R)));
  return &*([ p : p in PrimeDivisors(N) | GCD(f,p) eq 1 and k(p) eq 1 ] cat [1]);
end intrinsic;


intrinsic CMPointsCardinality(R::RngOrd, D::RngIntElt,N::RngIntElt) -> RngIntElt
  {the number of R-CM points on X(D,N)}
  discR:=Integers()!Discriminant(R);
  DNast:=DEE(R,D)*ENNstar(R,N);
  Cl,m1:=RingClassGroup(R);
  if IsDivisibleBy(discR,Integers()!((D*N)/DNast)) then
    return (2^(#PrimeDivisors(DEE(R,D)*ENN(R,N))))*(#Cl);
  else
    return 0;
  end if;
end intrinsic;

/*cm2:= [];
for R in CMOrdersList() do
if #RingClassGroup(R[1]) eq 2 then
   Append(~cm2,Discriminant(R[1]));
 end if;
end for;

DxN:=[];
for list in GYList() do
  Append(~DxN,<list[1],list[2],list[1]*list[2]>);
end for;

for DN in DxN do
  <DN,[ a : a in cm2 | IsDivisibleBy(a,DN[3]) ]>;
end for;

CMlist:=CMOrdersList();
for i in [1..#CMlist] do
  for j in [1..#CMlist] do
    if j gt i then
      R1:=CMlist[i];
      R2:=CMlist[j];
      HR1:=AbsoluteField(R1[2]);
      HR2:=AbsoluteField(R2[2]);
      L:=Compositum(HR1,HR2);
      if (HR1 meet HR2) ne Rationals() then
        <R1, R2>;
      end if;
    end if;
  end for;
end for;

*/




intrinsic CMFieldOfDefinitionALQuotient(R::RngOrd, D::RngIntElt, N::RngIntElt, m::RngIntElt) -> RngOrd
  {D discriminant, N level. For any point Q on the the Atkin-Lehner Quotient X(D,N)/w_m
  find the field of definition of the R-CM point Q. Note it's independent of Q. R has to be an order in a number field}
  assert IsDivisibleBy(D*N,m);
  if not(IsSplittingField(NumberField(R),QuaternionAlgebra(D))) then
    return "CM order not contained in quaternion algebra";
  else
    mr:= GCD(m, Integers()!(D*N/(DEE(R,D)*ENN(R,N))) );
    s:=-FundamentalDiscriminant(Discriminant(NumberField(R)));
    K:=NumberField(R);
    f:=Integers()!Index(MaximalOrder(R),R);
    //assert f*R eq Conductor(R);

    if mr eq 1 then
      bb:=1*R;
    else
      fac:=Factorization(MaximalOrder(R)*mr);
      //assert {true} eq Set([ IsRamified(pp[1]) : pp in fac ]);
      bb_init:=&*[ pp[1] : pp in fac ];
      bb:=bb_init meet R;
    end if;
    assert Norm(bb) eq mr;

    /*cm_list:=CMOrdersList();
    cm_rings:=[ ring : ring in cm_list | ring eq R ];
    assert R in cm_rings;*/

    Cl,m1:=RingClassGroup(R);
    ray:=RingClassField(R);
    HK:=NumberField(ray);
    HKabs:=AbsoluteField(HK);
    ag1,ag2,ag3:=AutomorphismGroup(ray);

    /*Cl,m1:=RingClassGroup(R);
    m2:=Inverse(m1);
    ray:=RayClassField(m1);
    HK:=NumberField(ray);
    HKabs:=AbsoluteField(HK);
  */

    idm:=map< HK -> HK | a :-> a, a:->a >;
    cc:=map< HK -> HK | a :-> ComplexConjugate(a), a :-> ComplexConjugate(a) >;

    if HK eq K then
      A:=map< Codomain(m1) -> ag2 | pp :-> ag2!idm >;
    else
      /*A:=function(pp);
        if IsDivisibleBy(Norm(pp),f) then
          auts:=Automorphisms(HK);
          assert #auts le 2;
          return map< HK -> HK | a :-> auts[1](a), a:->auts[1](a) >;
        else
          return ArtinMap(ray)(pp);
        end if;
      end function;*/
      A:=ArtinMap(ray);
    end if;

    ag,maps:=AutomorphismGroup(ray);

    DNast:=DEE(R,D)*ENNstar(R,N);
    if DNast ne 1 then
      if Integers()!(m/mr) eq 1 then
        auts:=[ExtendAutomorphism(A(bb),HKabs)];
        Hfix:=FixedField(HKabs,auts);
      elif Integers()!(m/mr) eq DNast then
        aa:=[ m1(idl) : idl in Set(Cl) | Discriminant(QuaternionAlgebra<Rationals()|-s,DNast*Norm(m1(idl))>) eq D ][1];
        auts:=[ ExtendAutomorphism(A(bb*aa),HKabs)*cc ];
        Hfix:=FixedField(HKabs,auts);
      else
        Hfix := HKabs;
      end if;
    else
      if Integers()!(m/mr) eq 1 then
        //[ Discriminant(QuaternionAlgebra<Rationals()|-s,Norm(idl)>) : idl in PrimesUpTo(1000,K) ];
        aa:=[ m1(idl) : idl in Set(Cl) | Discriminant(QuaternionAlgebra<Rationals()|-s,Norm(m1(idl))>) eq D ][1];
        auts := [ cc*ExtendAutomorphism(A(aa),HKabs), ExtendAutomorphism(A(bb),HKabs) ];
        Hfix:=FixedField(HKabs,auts);
      else
        aa:=[ m1(idl) : idl in Set(Cl) | Discriminant(QuaternionAlgebra<Rationals()|-s,Norm(m1(idl))>) eq D ][1];
        auts:= [ cc*ExtendAutomorphism(A(aa),HKabs) ];
        Hfix:=FixedField(HKabs,auts);
      end if;
    end if;
    //DNast; m/mr;

    return Hfix;
  end if;

end intrinsic;


intrinsic ExtendAutomorphism(sig::.,LF::FldNum) -> Any
  {Given a tower of fields L/K/F and an an element
  a in Aut(L|K), coerce a in Aut(L|F)}
  //idm:=map< HK -> HK | a :-> a, a:->a >;
  return map< LF -> LF | a :-> LF!sig(Domain(sig)!a), a :-> LF!Inverse(sig)(Domain(sig)!a)  >;
end intrinsic;




intrinsic ALFixedPointsCMOrder(D::RngIntElt,N::RngIntElt,m::RngIntElt) -> RngOrd
  {return the CM-order assoicated to the fixed points of w_m on X_0(D,N)}
  Rx<x>:=PolynomialRing(Rationals());
  if m eq 2 then
    K1<u1>:=NumberField(x^2+1);
    K2<u2>:=NumberField(x^2+2);
    R1:=sub< MaximalOrder(K1) | u1 >;
    R2:=sub< MaximalOrder(K2) | u2 >;
    return [R1,R2];
  elif m mod 4 eq 3 mod 4 then
    K1<u1>:=NumberField(x^2+m);
    R1:=sub< MaximalOrder(K1) | u1 >;
    R2:=sub< MaximalOrder(K1) | (1+u1)/2 >;
    return [R1,R2];
  else
    K1<u1>:=NumberField(x^2+m);
    R1:=sub< MaximalOrder(K1) | u1 >;
    return [R1];
  end if;
end intrinsic;





intrinsic RationalCMPointsCardinality(R::RngOrd, D::RngIntElt,N::RngIntElt,m::RngIntElt) -> RngIntElt
  { Number of Q-rational R-CM points on the quotient }
  if not(IsSplittingField(NumberField(R),QuaternionAlgebra(D))) then
    return 0;
  else
    cm_size:=CMPointsCardinality(R,D,N);
    if cm_size eq 0 then
      return 0;
    else

      if #RingClassGroup(R) eq 2 then
        if DEE(R,D)*ENNstar(R,D) eq 1 then
          field_definition:=CMFieldOfDefinitionALQuotient(R,D,N,m);
        else
          return 0;
        end if;
      else
        field_definition:=CMFieldOfDefinitionALQuotient(R,D,N,m);
      end if;

      if field_definition eq Rationals() then
        fixed_orders:=ALFixedPointsCMOrder(D,N,m);
        if R in fixed_orders then
          return cm_size;
        else
          return Integers()!cm_size/2;
        end if;
      else
        return 0;
      end if;
    end if;
  end if;
end intrinsic;

intrinsic RationalCMPointsCardinalityAllOrders(D::RngIntElt, N::RngIntElt, m::RngIntElt) -> RngIntElt
  {total number of CM points for all orders}
  cm_list:=CMOrdersList();
  no:=0;
  for R in cm_list do
    no:=no+RationalCMPointsCardinality(R[1],D,N,m);
  end for;
  return no;
end intrinsic;

intrinsic RationalCMPoints(D::RngIntElt,N::RngIntElt,m::RngIntElt) -> List
  {Given a complete set of CM points on X(D,N)/<w_m> we find which ones are CM}
  cm_list:=CMOrdersList();
  s:=ShimDBRecord(D,N,[1,m] : version:=2);
  assert s`ShimGenus ne 0;
  X:=s`ShimModel;
  proj:=s`ShimProjectionEquations;
  Qs:=Setseq(s`ShimRationalPoints);

  /*if Type(Codomain(proj)) eq CrvHyp then
    inf_pts:=PointsAtInfinity(Codomain(proj));
    assert #inf_pts le 2;
    if #inf_pts eq 2 then
      Exclude(~Qs,Eltseq(inf_pts[1]));
    end if;
  end if;*/

  /*for K in CMFieldsList() do
    cmK:=0;
    for R in cm_list do
      if IsIsomorphic(NumberField(R[1]),K) then
        cm_numberR:=RationalCMPointsCardinality(R[1],D,N,m);
        cmK:=cmK+cm_numberR;
      end if;
    end for;*/

  cm_points_proven:=[* *];
  cm_points_unproven:=[* *];

  for R in cm_list do
    cm_number:=RationalCMPointsCardinality(R[1],D,N,m);
    if cm_number ne 0 then
      RCMmaybe:=[* *];
      points_init:=[];
      for Q in Qs do
        Ps:=PullbackPointsWithEquation(proj,[* Q *]);
        if Ps ne [* *] then
          QP:=Parent(Eltseq(Ps[1])[1]);
          if IsSubfield(QP,R[2]) then
            Append(~points_init,Q);
          end if;
        end if;
      end for;
      assert cm_number le #points_init;
      Kdisc:=FundamentalDiscriminant(Discriminant(NumberField(R[1])));
      cond:=Index(R[1], MaximalOrder(R[1]));
      Append(~RCMmaybe,[Kdisc,cond]);
      Append(~RCMmaybe,points_init);

      if #RCMmaybe[2] gt cm_number then
        for Q in RCMmaybe[2] do
          P1:=Eltseq(PullbackPointsWithEquation(proj,[*Q*])[1]);
          IsCMPoint(R[1],D,N,P1);
        end for;
        Append(~cm_points_unproven,RCMmaybe);
      elif #RCMmaybe[2] eq cm_number then
        Append(~cm_points_proven,RCMmaybe);
      end if;
    end if;
  end for;
  return cm_points_proven, cm_points_unproven;
end intrinsic;

intrinsic RationalNonCMPoints(D::RngIntElt,N::RngIntElt,m::RngIntElt) -> SetEnum
  {return the non-CM points on the Atkin-Lehner quotient}
  s:=ShimDBRecord(D,N,[1,m] : version:=2);
  points:=s`ShimRationalPoints;
  cmpr,cmun:=RationalCMPoints(D,N,m);
  cm_points_init:=cmpr cat cmun;
  cm_points:=[];
  for pt in cm_points_init do
    for p in pt do
      if Type(p) eq SeqEnum then
        Append(~cm_points,p);
      end if;
    end for;
  end for;

  noncm:=[];
  for pt in Setseq(points) do
    if not(pt in cm_points) then
      Append(~noncm,pt);
    end if;
  end for;

  return Set(noncm);
end intrinsic;


intrinsic IsCMPoint(R::RngOrd,D::RngIntElt,N::RngIntElt,P::SeqEnum) -> MonStgElt
  {}
  mstar:= DEE(R,D)*ENNstar(R,N);
  s:=-FundamentalDiscriminant(Discriminant(NumberField(R)));
  K:=NumberField(R);
  f:=Integers()!Index(MaximalOrder(R),R);
  //assert f*R eq Conductor(R);
  QP:=Parent(Eltseq(P)[1]);

  Cl,m1:=RingClassGroup(R);
  ray:=RingClassField(R);
  HK:=NumberField(ray);
  HKabs:=AbsoluteField(HK);
  ag1,ag2,ag3:=AutomorphismGroup(ray);
  assert IsSubfield(QP,HK);

  idm:=map< HK -> HK | a :-> a, a:->a >;

  if HK eq K then
    A:=map< Codomain(m1) -> ag2 | pp :-> ag2!idm >;
  else
    A:=function(pp);
      if IsDivisibleBy(Norm(pp),f) then
        auts:=Automorphisms(HK);
        assert #auts le 2;
        return map< HK -> HK | a :-> auts[1](a), a:->auts[1](a) >;
      else
        return ArtinMap(ray)(pp);
      end if;
    end function;
  end if;

  aa:=[ m1(idl) : idl in Set(Cl) | Discriminant(QuaternionAlgebra<Rationals()|-s,mstar*Norm(m1(idl))>) eq D ][1];

  wmstar:=AtkinLehnerInvolution(D,N,[1,mstar]);
  wmstarK:=ChangeRingMap(wmstar,K);

  ccQP:=map< QP -> QP | a :-> ComplexConjugate(a), a :-> ComplexConjugate(a) >;
  Pbar:= Codomain(wmstarK)![ HK!(ccQP(u)) : u in Eltseq(P) ];

  Psigma:= Codomain(wmstarK)![ A(aa)(HK!u) : u in Eltseq(P) ];
  wmstarPsigma:=Codomain(wmstarK)!wmstarK(Psigma);

  print "wmstar is"; wmstar;
  print "Pbar is:"; Pbar;
  print "Psigma is:"; Psigma;
  print "wmstarPsigma is:"; wmstarPsigma;

  if Pbar ne wmstarPsigma then
    return "false";
  else
    return "inconclusive";
  end if;

end intrinsic;



intrinsic PointRepresentsPQMSurface(D::RngIntElt,N::RngIntElt,m::RngIntElt, P::.) -> BoolElt
{Given a non-CM rational point P and projection equations proj : X->X/<W>,
find whether the point represents a PQM surface c.f. BFGR theorem 4.5}

  s:=ShimDBRecord(D,N,[1,m] : version:=2);
  proj:=s`ShimProjectionEquations;
  Kpts:=PullbackPointsWithEquation(proj,[*P*]);
  assert #Kpts in {0,2,4};
  if #Kpts ne 0 then
    K:=Ring(Parent(Kpts[1]));
    assert K eq Ring(Parent(Kpts[2]));

    delta:=Discriminant(K);
    B:=QuaternionAlgebra< Rationals() | delta, m >;

    if Integers()!Discriminant(B) eq D then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
end intrinsic;


intrinsic PointsRepresentatingPQMSurface(D::RngIntElt,N::RngIntElt,m::RngIntElt) -> SetEnum
  {For all of the non-CM rational points on the quotient,
  return the set of those that represent a PQM surface}

  s:=ShimDBRecord(D,N,[1,m] : version:=2);
  noncm:=RationalNonCMPoints(D,N,m);
  list:=[];
  for P in Setseq(noncm) do
    if PointRepresentsPQMSurface(D,N,m,P) then
      Append(~list,P);
    end if;
  end for;
  return Set(list);
end intrinsic;



/*
D:=119; N:=1; m:=17;
s:=ShimDBRecord(D,N,[1,m]);
proj:=s`ShimProjectionEquations;
Q1:=Setseq(s`ShimRationalPoints)[1];
Q2:=Setseq(s`ShimRationalPoints)[2];

p1:=PullbackPointsWithEquation(proj,[*Q1*]);
p2:=PullbackPointsWithEquation(proj,[*Q2*]);
P2:=p2[1];
w7:=AtkinLehnerInvolution(D,N,[1,7]);
w17:=AtkinLehnerInvolution(D,N,[1,17]);
w119:=AtkinLehnerInvolution(D,N,[1,119]);

w7P2:=MapPointAnyField(w7,P2);
w17P2:=MapPointAnyField(w17,P2);
w119P2:=MapPointAnyField(w119,P2);

P1:=p1[1]; P2:=p1[2]; P3:=p2[1]; P4:=p2[2];
pts:=<P1,P2,P3,P4>;
< MapPointAnyField(w7,P) : P in pts >;
< MapPointAnyField(w7,P) eq Parent(MapPointAnyField(w7,P))!Eltseq(P) : P in pts >;

w7P2 eq Parent(w7P2)!Eltseq(P2);

CMPointsCardinality(CMOrder(7,1)[1],D,N);
CMPointsCardinality(CMOrder(7,4)[1],D,N);
*/





/*for E in CMFieldsList() do
  if IsSplittingField(E[1],QuaternionAlgebra(D)) then
    RationalCMPointsCardinality(MaximalOrder(E[1]),D,N,m);
    E[1]; CMFieldOfDefinitionALQuotient(MaximalOrder(E[1]),D,N,m);
  end if;
end for;*/
