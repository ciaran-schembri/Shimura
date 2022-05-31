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

s`ShimLabel := "39.2-[1,6]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!x^7 + 3*x^6 + 5*x^5 + 5*x^4 + 5*x^3 + 3*x^2 + x,Rx!x^4 + x^3 + x^2 + x + 1]);

s`ShimRationalPoints := {
[ 1, -1, 0 ],
[ 0, -1, 1 ],
[ 0, 1, 1 ],
[ 1, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback from quotient";

s`ShimPointsEverywhereLocally := true;

return s;

