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

s`ShimLabel := "55.1-[1,11]";

s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 11 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-x^6 - 6*x^4 + x^3 - 10*x^2 - 2*x - 
3,Rx!x^3 + x^2 + x]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

