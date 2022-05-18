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

s`ShimLabel := "10.23-[1,2,23,46]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 2, 23, 46 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-11*x^8 + 72*x^7 - 87*x^6 - 119*x^5 - 25*x^4 + 97*x^3 + 92*x^2 - 80*x,Rx!x^4 + x^2]);

s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 4, -136, 1 ],
[ -1, -1, 1 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

