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

s`ShimLabel := "62.1-[1,31]";

s`ShimDiscriminant :=  62;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 31 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!2*x^5 - x^4 - x^3 - 2*x^2 + x + 5,Rx!x^2 +
x]);

s`ShimRationalPoints := {
[ 1, 0, 0 ],
[ -1, 0, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

