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

s`ShimLabel := "10.23-[1,23]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 23 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Rx!20*x^12 + 120*x^11 + 318*x^10 + 490*x^9 + 
451*x^8 + 185*x^7 - 62*x^6 - 94*x^5 + 3*x^4 + 60*x^3 - 29*x - 11,Rx!x^4 + x^2 + 
1]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

