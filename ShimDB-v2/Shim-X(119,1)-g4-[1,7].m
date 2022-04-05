Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(),
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimRationalPoints,
 ShimPointsProvedCorrect,
 ShimPointsNotes,
 ShimPointsEverywhereLocally
 >;
s := rec< RF | >;

s`ShimLabel := "119.1-[1,7]";

s`ShimDiscriminant :=  119;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 7 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-3*x^10 + 3*x^9 + 5*x^8 - x^7 - 17*x^6 - 
2*x^5 + 18*x^4 + 6*x^3 - 12*x^2 - 9*x + 4,Rx!x^5 + x^4 + x^2 + x + 1]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Two Cover Descent";

s`ShimPointsEverywhereLocally := true;

return s;

