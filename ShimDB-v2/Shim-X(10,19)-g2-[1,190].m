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

s`ShimLabel := "10.19-[1,190]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 190 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!x^6 - 3*x^5 + x^4 + 2*x^3 - 3*x,Rx!x^2 + x
+ 1]);

s`ShimRationalPoints := {
[ -1, -3, 1 ],
[ -1, 2, 1 ],
[ 2, -1, 1 ],
[ 1, -1, 0 ],
[ 1, -1, 1 ],
[ 2, -6, 1 ],
[ -1, 7, 2 ],
[ 3, -9, 2 ],
[ -1, -13, 2 ],
[ 1, -2, 1 ],
[ 0, -1, 1 ],
[ 0, 0, 1 ],
[ 3, -29, 2 ],
[ 1, 1, 0 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

