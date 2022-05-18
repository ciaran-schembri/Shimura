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

s`ShimLabel := "6.31-[1,2,31,62]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 2, 31, 62 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!6*x^5 + 4*x^4 - 69*x^3 - 35*x^2 + 141*x - 63,Rx!x^2 + x]);

s`ShimRationalPoints := {
[ 1, 0, 0 ],
[ -7, -42, 3 ],
[ 3, -6, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

