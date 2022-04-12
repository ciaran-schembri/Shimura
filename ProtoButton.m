

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
      shimpoints:=Set([ Inverse(cm)(P) : P in Setseq(pointsearch) ]);
      shimproven:=false;
      shimnotes:="inconclusive";
      return shimpoints, shimproven, shimnotes;
    end if;

  else
    pointsX:= Set([ Inverse(cm)(P) : P in Setseq(pointsearch) ]);
    shimpoints:=pointsX;
    shimproven:=false;
    shimnotes:="inconclusive";
    return shimpoints, shimproven, shimnotes;
  end if;
    /*
    this doesn't work
    elif l eq 1 and u eq 1 then
      pointsJ := Points(JacC : Bound:=1000);
      if pointsJ ne {} then
        for i in [1..#pointsJ] do
          if Order(pointsJ[i]) eq 0 then
            P := pointsJ[i];
            break i;
          end if;
        end for;
        shimpoints := Chabauty(P);
        shimproven:=true;
        shimnotes := "Used Magma's Chabauty()"
      else
        shimpoints := Set([ Inverse(cm)(Q) : Q in Setseq(pointsearch) ]);;
        shimproven:=false;
        shimnotes := "inconclusive";
      end if;
    end if;
  end if;*/

end intrinsic;







intrinsic PullbackPointsFromQuotient(X::CrvHyp) -> Any
  {Given a projection X->X/<w>, if X/<w> has a finite number of points, try to pull them back to X.}
  C:=SimplifiedModel(Cx);
  A := Automorphisms(C);

if #A gt 2 then
  for i in [3..#A] do
  	G := AutomorphismGroup(C,[A[i]]);
	Q,m := CurveQuotient(G);
  QQ,map := SimplifiedModel(Q);
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
end if;
end intrinsic;



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
  locally_sol:=IsLocallySolvable(XG1);
  if locally_sol eq true then
    pointsearch:=Set(Setseq(Points(X : Bound:=10000)));
    if pointsearch eq {} then
      shimpoints:=pointsearch;
      shimproven:=false;
      shimnotes:="Is Locally Solvable";
    else
      JacX:=Jacobian(X);
      torsion:=TorsionSubgroup(JacX);
      tors_group:=GroupName(torsion);
      rank:=Rank(JacX);  //not sure if this is proved
      shimpoints:=Sprintf("DirectProduct(FPGroup(FreeAbelianGroup(%o)), FPGroup(Group(\"%o\")))", rank, tors_group );
      shimproven:=true;
      shimnotes:= "NA";
    end if;
  else
    shimpoints:={};
    shimproven:=true;
    shimnotes:="Not Locally Solvable";
  end if;

 return shimpoints, shimproven, shimnotes;
end intrinsic;



intrinsic RationalPointsAnyGenus(X::.) -> Any
  {return the points, where they're prvoed correct and any extra info}
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
    b,pts := SmallerRankQuotient(C);
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
