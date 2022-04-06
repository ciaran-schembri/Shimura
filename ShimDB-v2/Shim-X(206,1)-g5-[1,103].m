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

s`ShimLabel := "206.1-[1,103]";

s`ShimDiscriminant :=  206;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 103 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Rx!-2*x^11 + 3*x^10 + 10*x^9 + 82*x^8 + 
54*x^7 - 184*x^6 - 1662*x^5 - 4971*x^4 - 7210*x^3 - 4556*x^2 - 1024*x,Rx!x^5 + 
x^4 + x^3 + x^2]);

s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

