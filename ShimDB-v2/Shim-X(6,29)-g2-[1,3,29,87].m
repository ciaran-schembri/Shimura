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

s`ShimLabel := "6.29-[1,3,29,87]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 3, 29, 87 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!6*x^5 + 21*x^4 - 42*x^3 - 117*x^2 + 144*x,Rx!x^2 + x]);

s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, 0, 0 ],
[ 9, -612, 8 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

