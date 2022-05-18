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

s`ShimLabel := "146.1-[1,2]";

s`ShimDiscriminant :=  146;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-5*x^10 + x^9 - 4*x^8 + 26*x^7 + 14*x^6 + 43*x^5 - 36*x^4 - 38*x^3 - 110*x^2 - 56*x - 44,Rx!x^4 + x^2]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

