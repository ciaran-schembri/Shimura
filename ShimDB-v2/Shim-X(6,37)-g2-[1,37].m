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

s`ShimLabel := "6.37-[1,37]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 37 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-17*x^6 + 22*x^5 - 60*x^4 + 45*x^3 - 
60*x^2 + 22*x - 17,Rx!x^3 + 1]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

