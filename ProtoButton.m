

intrinsic RationalPointsNaive(X::CrvHyp) -> Any
  {first try at finding rational points}
  C,cm:=SimplifiedModel(X);
  pointsearch := Set(Setseq(Points(C : Bound:=30000)));
  if pointsearch eq {} then
  	f,_ := HyperellipticPolynomials(C);
		if HasPointsEverywhereLocally(f,2) eq false then
      shimpoints:={};
      shimproven:=true;
      shimnotes:="Does Not Have Points Everywhere Locally";
      return shimpoints, shimproven, shimnotes;
  	else
		  Hk,_ := TwoCoverDescent(C);
 			if #Hk eq 0 then
        shimpoints:={};
        shimproven:=true;
        shimnotes:="Used Two Cover Descent";
        return shimpoints, shimproven, shimnotes;
   		end if;
 		end if;
	end if;

  if Genus(C) eq 2 then
    JacC := Jacobian(C);
    l,u := RankBounds(JacC);
    assert l ge 0 and u ge l;
    if u eq 0 then
      pointsC:= Set(Setseq(Chabauty0(JacC)));
      pointsX:= Set([ Inverse(cm)(P) : P in Setseq(pointsC) ]);
      shimpoints:=pointsX;
      shimproven:=true;
      shimnotes:="Used Magma's Chabauty0()";
      return shimpoints, shimproven, shimnotes;
    else
      shimpoints, shimproven, shimnotes := PullbackPointsFromQuotient(C);
      if shimproven eq true then
        return shimpoints, shimproven, shimnotes;
      else
        shimpoints:=Set([ Inverse(cm)(P) : P in Setseq(pointsearch) ]);
        shimproven:=false;
        shimnotes:="inconclusive";
        return shimpoints, shimproven, shimnotes;
      end if;
    end if;

  else
    shimpoints, shimproven, shimnotes := PullbackPointsFromQuotient(C);
    if shimproven eq true then
      return shimpoints, shimproven, shimnotes;
    else
      pointsX:= Set([ Inverse(cm)(P) : P in Setseq(pointsearch) ]);
      shimpoints:=pointsX;
      shimproven:=false;
      shimnotes:="inconclusive";
      return shimpoints, shimproven, shimnotes;
    end if;
  end if;

end intrinsic;




intrinsic PullbackPointsWithEquation(proj::MapSch, quotient_points::SetEnum) -> SetEnum
  {Given projection equations proj : X->X/<W>,
  pullback quotient_points to X}
  list:=<>;
  for P in Setseq(quotient_points) do
    XPScheme:=Difference(Pullback(proj,P), BaseScheme(proj));
    Pbar,Kinit:=PointsOverSplittingField(XPScheme);
    K:=NumberField(AbsolutePolynomial(Kinit));

    D:=Domain(proj);
    C:=Codomain(proj);

    DK:=ChangeRing(D,K);
    CK:=ChangeRing(C,K);

    eqns:=DefiningEquations(proj);
    RK:=Parent(ChangeRing(eqns[1],K));
    eqnsK:=[];
    for ff in eqns do
      ffK:=ChangeRing(ff,RK);
      Append(~eqnsK,ffK);
    end for;

    projK:=map< DK -> CK | eqnsK >;
    XPKScheme:=Difference(Pullback((projK),CK!P), BaseScheme(projK));
    Kpoints:=RationalPoints(XPKScheme);
    for PK in Setseq(Kpoints) do
      Append(~list,PK);
    end for;
  end for;

  return list;
end intrinsic;


intrinsic PointRepresentsPQMSurface(proj::MapSch, P::., discriminant::RngIntElt, W::SeqEnum) -> BoolElt
{Given a non-CM rational point P and projection equations proj : X->X/<W>,
find whether the point represents a PQM surface c.f. BFGR theorem 4.5}

  Kpts:=PullbackPointsWithEquation(proj,{P});
  assert #Kpts eq 2;
  K:=Ring(Parent(Kpts[1]));
  assert K eq Ring(Parent(Kpts[2]));

  delta:=Discriminant(K);
  assert #W eq 2 and 1 in W;
  m:=Sort(W)[2];
  B:=QuaternionAlgebra< Rationals() | delta, m >;

  if Integers()!Discriminant(B) eq discriminant then
    return true;
  else
    return false;
  end if;
end intrinsic;


intrinsic PointsRepresentatingPQMSurface(proj::MapSch,quotient_points::SetEnum,discriminant::RngIntElt, W::SeqEnum) -> SetEnum
  {For all of the non-CM rational points on the quotient,
  return the set of those that represent a PQM surface}

  list:=[];
  for P in Setseq(quotient_points) do
    if PointRepresentsPQMSurface(proj,P,discriminant,W) then
      Append(~list,P);
    end if;
  end for;
  return Set(list);
end intrinsic;






intrinsic PullbackPointsFromQuotient(X::.) -> Any
  {Given a projection X->X/<w>, if X/<w> has a finite number of points, try to pull them back to X.}
  if Genus(X) lt 2 then
    return {}, false, "inconclusive";
  end if;

  C,cm:=SimplifiedModel(X);
  A := Automorphisms(C);

  for i in [1..#A] do
    G := AutomorphismGroup(C,[A[i]]);
  	Q,m := CurveQuotient(G);
    if Genus(Q) ne 0 and not(IsIsomorphic(Q,C)) then
      if Type(Q) eq CrvEll then
        if  MordellWeilRank(Q) eq 0 then
          T,t:=TorsionSubgroup(Q);
          ECpts := [ t(x) : x in Set(T) ];
          RC := &cat[ Setseq(RationalPoints(Difference(Pullback((m),P), BaseScheme(m)))) : P in ECpts ];
          RX := Set([ Inverse(cm)(p) : p in RC ]);
          shimpoints:=RX;
          shimproven:=true;
          shimnotes:="pullback from quotient";
          return shimpoints, shimproven, shimnotes;
        end if;
      else
        pts, proven:=RationalPointsAnyGenus(Q);
        if proven and Type(pts) eq SetEnum then
          RC := &cat[ Setseq(RationalPoints(Difference(Pullback((m),P), BaseScheme(m)))) : P in Setseq(pts) ];
          RX := Set([ Inverse(cm)(p) : p in RC ]);
          shimpoints:=RX;
          shimproven:=true;
          shimnotes:="pullback from quotient";
          return shimpoints, shimproven, shimnotes;
        end if;
      end if;
    end if;
  end for;

  shimpoints:={};
  shimproven:=false;
  shimnotes:="inconclusive";
  return shimpoints, shimproven, shimnotes;
end intrinsic;

/*
      if Genus(Q) eq 1 then

        continue;
      end if;
    	r := RankBounds(Jacobian(Q));
      if r lt Genus(Q) then
      	print Q;
      	b,im_pts := RationalPointsNaive(QQ);
      	pts := [];
      	for k in [1..#im_pts] do
          R := RationalPoints(Difference(Pullback((m*map),im_pts[k]), BaseScheme(m)));
          S:=IndexedSetToSequence(R);
          pts := pts cat S; //TODO: remove dulplicates
        end for;
        if b then
          break i;
        end if;
      end if;
  end for;
  if b then
  return true,pts;
  else print "keep looking";
  	return false,{};
  end if;
end intrinsic;
*/


intrinsic RationalPointsGenus0(C::CrvCon) -> Any
 {For a Genus 0 curve, return whether it has a rational point, also if it is proven and any notes}
 shimpoints:=HasRationalPoint(C);
 shimproven:=true;
 shimnotes:="NA";
 return shimpoints, shimproven, shimnotes;
end intrinsic;


intrinsic RationalPointsGenus1(X::Crv) -> Any
 {For a Genus 1 curve, return whether it has a rational point; if it does return the mordell-weil group.
  also if it is proven and any notes}

  XG1:=GenusOneModel(X);
  MinXG1, psi1:=Minimise(XG1);
  XG1_reduced, psi2:=Reduce(MinXG1);
  X_reduced:=Curve(XG1_reduced);

  locally_sol:=IsLocallySolvable(XG1);
  if locally_sol eq true then
    pointsearch:=Set(Setseq(Points(X_reduced : Bound:=10000)));
    if pointsearch eq {} then
      shimpoints:=pointsearch;
      shimproven:=false;
      shimnotes:="Is Locally Solvable";
    else
      JacX:=Jacobian(X);
      rank:=MordellWeilRank(JacX);
      pointsX:=[];
      d:=100000;
      while #pointsX eq 0 do
        d:=d+100000;
        pointsX  := pointsX cat Setseq(Set(Points(X : Bound:=d)));
      end while;
      pt:=pointsX[1];
      E,em:=EllipticCurve(X,pt);
      T,t:=TorsionSubgroup(E);
      if rank eq 0 then
        pts := [ (t(x)) : x in Set(T) ];
        ptsX:=Set(&cat[ Setseq(RationalPoints(Difference(Pullback(em,P), BaseScheme(em)))) : P in pts ]);
        assert #ptsX eq #Set(T);
        shimpoints:=ptsX;
        shimproven:=true;
        shimnotes:="pullback of torsion";
      else
  //not sure if this is proved
        shimpoints:="NA";
        shimproven:=true;
        shimnotes:= Sprintf("DirectProduct(FPGroup(FreeAbelianGroup(%o)), FPGroup(Group(%o)))", rank, Sprint(GroupName(T)) );
      end if;
    end if;
  else
    shimpoints:={};
    shimproven:=true;
    shimnotes:="Not Locally Solvable";
  end if;

 return shimpoints, shimproven, shimnotes;
end intrinsic;



intrinsic RationalPointsAnyGenus(X::.) -> Any
  {return the points, where they're proved correct and any extra info}
  if Genus(X) eq 0 then
    return RationalPointsGenus0(X);
  elif Genus(X) eq 1 then
    return RationalPointsGenus1(X);
  else
    return RationalPointsNaive(X);
  end if;
end intrinsic;

intrinsic RationalPointsAttempt(Cx::CrvHyp) -> Any
  {}
  C:=SimplifiedModel(Cx);
b,pts := RationalPointsNaive(C);
if b then
    return true,pts;
else
    b,pts := PullbackPointsFromQuotient(C);
    return b,pts;
end if;
if not b then
  return "points not known";
end if;
end intrinsic;

intrinsic HasAdelicPointsAnyGenus(X::.) -> Any
  {Decide if a curve has points everywhere locally. Need to careful about types}
  if Genus(X) eq 0 then
    if HasRationalPoint(X) then
      return true;
    else
      return false;
    end if;
  elif Genus(X) eq 1 then
    assert Type(X) eq Crv;
    assert IsNonsingular(X);
    XG1:=GenusOneModel(X);
    locally_sol:=IsLocallySolvable(XG1);
    return locally_sol;
  else
    assert Type(X) eq CrvHyp;
    C,cm:=SimplifiedModel(X);
    f,_ := HyperellipticPolynomials(C);
    return HasPointsEverywhereLocally(f,2);
  end if;

end intrinsic;



/*
//Tests

//no points everywhere locally
C1 := HyperellipticCurve(3*x^6+2);
RatFirstAttempt(C1);

//two cover descent works
C2:=HyperellipticCurve(2*x^6+x+2);
RatFirstAttempt(C2);

//Chabauty0 works
C3 := HyperellipticCurve(x^6+1);
RatFirstAttempt(C3);

//Chabauty works for 1 < 2
C4 := HyperellipticCurve(x^6+x^2+2);
RatFirstAttempt(C4);

//keep looking
C5 := HyperellipticCurve(x^6+x^2+1);
RatFirstAttempt(C5);

C6 := HyperellipticCurve(x^12+1);
RatAttempt(C6);

C7 := HyperellipticCurve(x^12+x^4+1);
SmallerRankQuotient(C7);
*/
