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

s`ShimLabel := "69.1-[1,23]";

s`ShimDiscriminant :=  69;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 23 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!3*x^5 - 11*x^4 + 13*x^3 + 13*x^2 - 1,Rx!x^2 + x]);

s`ShimRationalPoints := {
[ 1, 0, 0 ],
[ 1, -10, 4 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

