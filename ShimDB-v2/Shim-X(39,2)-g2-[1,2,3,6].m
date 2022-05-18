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

s`ShimLabel := "39.2-[1,2,3,6]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!x^5 + x^4 - 2*x^3 - 3*x^2 - 3*x,Rx!x^3 + x^2 + x]);

s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, -1, 0 ],
[ 1, 0, 0 ],
[ -1, 2, 1 ],
[ -1, -1, 1 ],
[ -4, 26, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

