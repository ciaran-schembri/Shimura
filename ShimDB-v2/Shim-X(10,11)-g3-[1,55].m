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

s`ShimLabel := "10.11-[1,55]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 55 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!2*x^7 + 5*x^6 - 18*x^5 - 30*x^4 + 67*x^3 + 21*x^2 - 41*x + 13,Rx!x^3 + x]);

s`ShimRationalPoints := {
[ -1, 1, 1 ],
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

