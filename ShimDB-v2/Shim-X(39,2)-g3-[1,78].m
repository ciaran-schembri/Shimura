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

s`ShimLabel := "39.2-[1,78]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 78 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-2*x^8 + 11*x^7 - 28*x^6 + 20*x^5 - 5*x^4 
+ 20*x^3 - 28*x^2 + 11*x - 2,Rx!x^4 + x^3 + x^2 + x + 1]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Two Cover Descent";

s`ShimPointsEverywhereLocally := true;

return s;

