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

s`ShimLabel := "26.3-[1,78]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 78 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-x^5 + 2*x^4 - 2*x^3 + 2*x^2 - x,Rx!x^3 + 1]);

s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, 0, 1 ],
[ 1, -1, 0 ],
[ 1, 0, 0 ],
[ 0, -1, 1 ],
[ 1, -2, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

