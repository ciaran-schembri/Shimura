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

s`ShimLabel := "22.3-[1,22]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 22 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-11*x^6 + 33*x^5 - 15*x^4 - 26*x^3 + 7*x^2 + 10*x + 2,Rx!x^2 + x + 1]);

s`ShimRationalPoints := {
[ 0, -2, 1 ],
[ 1, 0, 1 ],
[ 1, -3, 1 ],
[ 3, -19, 2 ],
[ 0, 1, 1 ],
[ -1, -3, 2 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

