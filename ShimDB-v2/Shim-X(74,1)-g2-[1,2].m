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

s`ShimLabel := "74.1-[1,2]";

s`ShimDiscriminant :=  74;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-6*x^6 - 16*x^5 - 8*x^4 - 8*x^3 - 7*x^2 + 17*x - 5,Rx!x^2 + x]);

s`ShimRationalPoints := {
[ -5, -15, 3 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

