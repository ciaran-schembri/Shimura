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

s`ShimLabel := "22.5-[1,55]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 55 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-3*x^8 + 7*x^6 + 9*x^4 + 14*x^2 + 20,Rx!x^4 + x^2]);

s`ShimRationalPoints := {
[ 2, -10, 1 ],
[ -2, -10, 1 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

