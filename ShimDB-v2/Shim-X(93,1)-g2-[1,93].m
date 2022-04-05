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

s`ShimLabel := "93.1-[1,93]";

s`ShimDiscriminant :=  93;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 93 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!x^3 + x^2 - 2*x,Rx!x^3 + x + 1]);

s`ShimRationalPoints := {
[ -2, 0, 1 ],
[ 1, 0, 1 ],
[ 1, 0, 0 ],
[ -1, -1, 1 ],
[ -1, 2, 1 ],
[ 4, -135, 3 ],
[ 1, -1, 0 ],
[ -2, 9, 1 ],
[ 1, -5, 2 ],
[ 4, 8, 3 ],
[ 1, -3, 1 ],
[ 0, -1, 1 ],
[ 0, 0, 1 ],
[ 1, -8, 2 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

