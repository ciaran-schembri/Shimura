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

s`ShimLabel := "6.29-[1,87]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 87 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-12*x^8 + 24*x^7 + 34*x^6 - 72*x^5 - 
17*x^4 + 48*x^3 - 24*x^2 + 5*x + 13,Rx!x^2 + x]);

s`ShimRationalPoints := {
[ 1, -1, 1 ],
[ -1, 2, 2 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

