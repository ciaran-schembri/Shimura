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

s`ShimLabel := "86.1-[1,43]";

s`ShimDiscriminant :=  86;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 43 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!2*x^6 - 2*x^5 - 11*x^4 + 6*x^3 + 20*x^2 - 
7*x - 11,Rx!x^2 + x]);

s`ShimRationalPoints := {
[ 2, -3, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

