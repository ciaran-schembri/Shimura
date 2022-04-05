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

s`ShimLabel := "10.23-[1,46]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 46 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Rx!-11*x^12 + 49*x^11 - 254*x^10 + 387*x^9 - 
1597*x^8 + 1007*x^7 - 15073*x^6 + 32659*x^5 - 142651*x^4 + 231800*x^3 - 
454352*x^2 + 374400*x - 300800,Rx!x^6 + x^5 + x^4 + x^3]);

s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

