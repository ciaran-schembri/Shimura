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

s`ShimLabel := "95.1-[1,19]";

s`ShimDiscriminant :=  95;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 19 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-2*x^10 + 6*x^9 - 30*x^8 + 64*x^7 - 
149*x^6 + 201*x^5 - 266*x^4 + 187*x^3 - 132*x^2 + 14*x - 43,Rx!x^5 + x^4 + x^3 +
x^2 + x]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

