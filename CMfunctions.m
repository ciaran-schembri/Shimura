
//We implement the functions from the appendix of Gonzalez-Rotger
//to determine whether a Q-rational point on an Atkin-Lehner quotient is CM

intrinsic CMOrder(s::RngIntElt,f::RngIntElt) -> Any
  {return the CM order in Q(sqrt(-s)) of conductor f}
  discs_conds:=  [
    [ 3, 1 ],
    [ 3, 2 ],
    [ 3, 3 ],
    [ 3, 4 ],
    [ 3, 5 ],
    [ 3, 7 ],
    [ 4, 1 ],
    [ 4, 2 ],
    [ 4, 3 ],
    [ 4, 4 ],
    [ 4, 5 ],
    [ 7, 1 ],
    [ 7, 2 ],
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
  discs_conds:=  [
    [ 3, 1 ],
    [ 3, 2 ],
    [ 3, 3 ],
    [ 3, 4 ],
    [ 3, 5 ],
    [ 3, 7 ],
    [ 4, 1 ],
    [ 4, 2 ],
    [ 4, 3 ],
    [ 4, 4 ],
    [ 4, 5 ],
    [ 7, 1 ],
    [ 7, 2 ],
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
  //ONLY WORKS FOR N=1 AT PRESENT
  f:=Integers()!Index(MaximalOrder(R),R);
  assert (R meet f*MaximalOrder(R)) eq Conductor(R);
  discR:=Integers()!Discriminant(R);
  DNast:=DEE(R,D)*ENNstar(R,N);
  Cl,m1:=RingClassGroup(R);

  if not(IsSplittingField(NumberField(R),QuaternionAlgebra(D))) then
    return 0;
  end if;

  sigma:= PrimeDivisors(D);
  if [ p : p in sigma | IsDivisibleBy(f,p) ] ne [] then
    return 0;
  end if;

  assert [ p : p in sigma | IsDivisibleBy(f,p) ] eq [];
  k:=KroneckerCharacter(Discriminant(NumberField(R)));
  if [ p : p in sigma | k(p) eq 1 ] ne [] then
    return 0;
  end if;

  if IsDivisibleBy(discR,Integers()!((D*N)/DNast)) then
    return (2^(#PrimeDivisors(DEE(R,D)*ENN(R,N))))*(#Cl);
  else
    return 0;
  end if;
end intrinsic;


intrinsic CMFieldOfDefinitionALQuotient(R::RngOrd, D::RngIntElt, N::RngIntElt, m::RngIntElt) -> RngOrd
  {D discriminant, N level. For any R-CM point on the the Atkin-Lehner Quotient
  X(D,N)/w_m find the field of definition of the point.}
  assert IsDivisibleBy(D*N,m);
  if CMPointsCardinality(R,D,N) eq 0 then
    return "No CM points for this order";
  else
    mr:= GCD(m, Integers()!(D*N/(DEE(R,D)*ENN(R,N))) );
    s:=-FundamentalDiscriminant(Discriminant(NumberField(R)));
    K:=NumberField(R);
    f:=Integers()!Index(MaximalOrder(R),R);

    if mr eq 1 then
      bb:=1*R;
    else
      fac:=Factorization(MaximalOrder(R)*mr);
      bb_init:=&*[ pp[1] : pp in fac ];
      bb:=bb_init meet R;
    end if;
    assert Norm(bb) eq mr;

    Cl,m1:=RingClassGroup(R);
    ray:=RingClassField(R);
    HK:=NumberField(ray);
    HKabs:=AbsoluteField(HK);
    ag1,ag2,ag3:=AutomorphismGroup(ray);



    idm:=map< HK -> HK | a :-> a, a:->a >;
    cc:=map< HK -> HK | a :-> ComplexConjugate(a), a :-> ComplexConjugate(a) >;

    if HK eq K then
      A:=map< Codomain(m1) -> ag2 | pp :-> ag2!idm >;
    else
      A:=ArtinMap(ray);
    end if;

    ag,maps:=AutomorphismGroup(ray);

    DNast:=DEE(R,D)*ENNstar(R,N);
    if DNast ne 1 then
      if Integers()!(m/mr) eq 1 then
        auts:=[ExtendAutomorphism(A(bb),HKabs)];
        Hfix:=FixedField(HKabs,auts);
      elif Integers()!(m/mr) eq DNast then
        if #Cl eq 1 then
          aa := ideal< R | 1 >;
          assert Discriminant(QuaternionAlgebra<Rationals()|-s,DNast*Norm(aa)>) eq D;
        else
          aa:=[ m1(idl) : idl in Set(Cl) | Discriminant(QuaternionAlgebra<Rationals()|-s,DNast*Norm(m1(idl))>) eq D ];
          assert #aa ne 0;
          aa:=aa[1];
        end if;
        auts:=[ ExtendAutomorphism(A(bb*aa),HKabs)*cc ];
        Hfix:=FixedField(HKabs,auts);
      else
        Hfix := HKabs;
      end if;
    else
      if Integers()!(m/mr) eq 1 then
        if #Cl eq 1 then
          aa := ideal< R | 1 >;
          assert Discriminant(QuaternionAlgebra<Rationals()|-s,DNast*Norm(aa)>) eq D;
        else
          aa:=[ m1(idl) : idl in Set(Cl) | Discriminant(QuaternionAlgebra<Rationals()|-s,Norm(m1(idl))>) eq D ];
          assert #aa ne 0;
          aa:=aa[1];
        end if;
        auts := [ cc*ExtendAutomorphism(A(aa),HKabs), ExtendAutomorphism(A(bb),HKabs) ];
        Hfix:=FixedField(HKabs,auts);
      else
        if #Cl eq 1 then
          aa := ideal< R | 1 >;
          assert Discriminant(QuaternionAlgebra<Rationals()|-s,DNast*Norm(aa)>) eq D;
        else
          aa:=[ m1(idl) : idl in Set(Cl) | Discriminant(QuaternionAlgebra<Rationals()|-s,Norm(m1(idl))>) eq D ];
          assert #aa ne 0;
          aa:=aa[1];
        end if;
        auts:= [ cc*ExtendAutomorphism(A(aa),HKabs) ];
        Hfix:=FixedField(HKabs,auts);
      end if;
    end if;

    return Hfix;
  end if;

end intrinsic;


intrinsic ExtendAutomorphism(sig::.,LF::FldNum) -> Any
  {Given a tower of fields L/K/F and an an element
  a in Aut(L|K), coerce a in Aut(L|F)}
  return map< LF -> LF | a :-> LF!sig(Domain(sig)!a), a :-> LF!Inverse(sig)(Domain(sig)!a)  >;
end intrinsic;




intrinsic ALFixedPointsCMOrder(D::RngIntElt,N::RngIntElt,m::RngIntElt) -> RngOrd
  {return the CM-order associated to the fixed points of w_m on X_0(D,N)}
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
  { Number of QQ-rational R-CM points on the quotient X_0(D,N)/w_m}
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


intrinsic RationalCMPointsCardinality(K::FldNum, D::RngIntElt,N::RngIntElt,m::RngIntElt) -> RngIntElt
  {the number of K-CM points for the imaginary quadratic field K}
  cm_list:=CMOrdersList();
  cmK:=0;
  for R in cm_list do
    if IsIsomorphic(NumberField(R[1]),K) then
      cm_no:=RationalCMPointsCardinality(R[1],D,N,m);
      cmK:=cmK+cm_no;
    end if;
  end for;
  return cmK;
end intrinsic;



intrinsic RationalCMPointsCardinalityAllOrders(D::RngIntElt, N::RngIntElt, m::RngIntElt) -> RngIntElt
  {total number of CM points for all orders on X_0(D,N)/w_m}
  cm_list:=CMOrdersList();
  no:=0;
  for R in cm_list do
    no:=no+RationalCMPointsCardinality(R[1],D,N,m);
  end for;
  return no;
end intrinsic;

intrinsic CMPointsCardinalityAllOrders(D::RngIntElt, N::RngIntElt) -> RngIntElt
  {total number of CM points for all orders on X_0(D,N)}
  cm_list:=CMOrdersList();
  no:=0;
  for R in cm_list do
    no:=no+CMPointsCardinality(R[1],D,N);
  end for;
  return no;
end intrinsic;

intrinsic RationalCMPoints(D::RngIntElt,N::RngIntElt,m::RngIntElt) -> List
  {Given a provably complete set of rational points on X(D,N)/<w_m>, we find
   which ones are CM}
  cm_list:=CMOrdersList();
  s:=ShimDBRecord(D,N,[1,m] : version:=2);
  assert s`ShimGenus ne 0;
  X:=s`ShimModel;
  proj:=s`ShimProjectionEquations;
  Qs:=Setseq(s`ShimRationalPoints);

  cm_pt_orders:=[* *];
  for ord in cm_list do
    if RationalCMPointsCardinality(ord[1],D,N,m) ne 0 then
      Append(~cm_pt_orders, ord);
    end if;
  end for;

  cm_points_proven:=[* *];
  cm_points_unproven:=[* *];

  points_init:=[* *];
  for Q in Qs do
    Ps:=PullbackPointsWithEquation(proj,[* Q *]);
    if Ps ne [* *] then
      QP:=Parent(Eltseq(Ps[1])[1]);
      QP_Kinit:=[];
      for R in cm_pt_orders do
        if IsSubfield(QP,R[2]) then
          disc:=FundamentalDiscriminant(Discriminant(NumberField(R[1])));
          Append(~QP_Kinit,disc);
        end if;
      end for;
      if QP_Kinit ne [] then
        QP_K:=Setseq(Set(QP_Kinit));
        assert #QP_K eq 1;
        Qpts:=[* *];
        Append(~Qpts,Q);
        Append(~Qpts,QP_K[1]);
        Append(~points_init,Qpts);
      end if;
    else
      assert D eq 93 and m eq 93;
      Qpts:=[* *];
      Append(~Qpts,Q);
      Append(~Qpts,-4);
      Append(~points_init,Qpts);
    end if;
  end for;

  Rz<z>:=PolynomialRing(Rationals());
  discs:= Setseq(Set([ A[2] : A in points_init]));
  cm_fields:=[ NumberField(z^2 - d) : d in discs ];
  for Ks in cm_fields do
    cm_Ks_total:=RationalCMPointsCardinality(Ks,D,N,m);
    cm_Ks_points:=[ A[1] : A in points_init | A[2] eq FundamentalDiscriminant(Discriminant(Ks)) ];
    assert #cm_Ks_points ge cm_Ks_total;
    if #cm_Ks_points eq cm_Ks_total then
      Append(~cm_points_proven, [* cm_Ks_points, Ks *]);
    else
      Append(~cm_points_unproven, [* cm_Ks_points, Ks *]);
    end if;
  end for;

  assert #cm_points_unproven eq 0;

  cm_points_proven2:=[* *];
  for cm in cm_points_proven do
    for pt in cm[1] do
      Append(~cm_points_proven2, [* pt, FundamentalDiscriminant(Discriminant(cm[2])) *]);
    end for;
  end for;

  return cm_points_proven2, cm_points_unproven;
end intrinsic;

intrinsic RationalNonCMPoints(D::RngIntElt,N::RngIntElt,m::RngIntElt) -> SetEnum
  {return the rational non-CM points on the Atkin-Lehner quotient X_0(D,N)/w_m}
  s:=ShimDBRecord(D,N,[1,m] : version:=2);
  points:=s`ShimRationalPoints;
  cmpr,cmun:=RationalCMPoints(D,N,m);
  assert #cmun eq 0;
  cm_points:=[ A[1] : A in cmpr ];

  non_cm_points:= [ A : A in Setseq(points) | A notin cm_points ];
  return non_cm_points;
end intrinsic;
