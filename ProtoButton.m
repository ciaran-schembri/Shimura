 _<x> := PolynomialRing(Rationals());

RatFirstAttempt := function(C: CrvHyp)
KnownPts := Points(C : Bound:=1000);
b := false;
if #KnownPts eq 0 then 
    C := SimplifiedModel(C);
	f,_ := HyperellipticPolynomials(C);
		if HasPointsEverywhereLocally(f,2) eq false then
		print "it has no points everywhere locally";
		pts := {};
		b := true;
		else 
		Hk,_ := TwoCoverDescent(C);
 			if #Hk eq 0 then 
 			print "two cover descent works";
 			b := true;
 			pts := {};
 			end if;
 		end if;
	end if;

if #KnownPts ge 1 and Genus(C) eq 2 then
J := Jacobian(C);
r := RankBounds(J);

if r eq 0 then 
	print "Chabauty0 works";
    pts := Chabauty0(J);
	b := true;
end if;


if r eq 1 then
	ptsJ := Points(J : Bound:=100);
    for i in [1..#ptsJ] do
    if Order(ptsJ[i]) eq 0 then
    	P := ptsJ[i];
    break i;
    end if;
    end for;
    print "Chabauty works for 1 < 2";
    b := true;
    pts := Chabauty(P);
end if;

end if;



if b then
return true,pts;

else 
print "keep looking";
return false,{};
end if;

end function;







SmallerRankQuotient := function(C : CrvHyp)
A := Automorphisms(C);

if #A gt 2 then
  for i in [3..#A] do
  	G := AutomorphismGroup(C,[A[i]]);
	Q,m := CurveQuotient(G); 
	r := RankBounds(Jacobian(Q));
    if r lt Genus(Q) then
    	print Q;
    	b,im_pts := RatFirstAttempt(Q);
    	pts := [];
    	for k in [1..#im_pts] do
            R := RationalPoints(Difference(Pullback(m,im_pts[k]), BaseScheme(m)));
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
end function;





RatAttempt := function(C: CrvHyp)
b,pts := RatFirstAttempt(C);
if b then
    return true,pts;
else 
    b,pts := SmallerRankQuotient(C);
    return b,pts;
end if;
end function;

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

