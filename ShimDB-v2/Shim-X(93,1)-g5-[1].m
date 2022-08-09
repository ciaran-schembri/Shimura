Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations,
 ShimRationalPoints,
 ShimPointsProvedCorrect,
 ShimPointsNotes,
 ShimPointsEverywhereLocally
>;
s := rec< RF | >;

s`ShimLabel := "93.1-[1]";

s`ShimDiscriminant :=  93;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  5;

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimModel:=Curve(AS, [
9*x[1]^6 - 18*x[1]^5 - 25*x[1]^4 - 12*x[1]^3 + 71*x[1]^2 + 30*x[1] - x[2]^2 + 9,
-4*x[1]^2 - 6*x[1] - x[3]^2 - 9
]);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^6 - 18*x[1]^5 - 25*x[1]^4 - 12*x[1]^3 + 71*x[1]^2 + 30*x[1] - x[2]^2 + 9,
-4*x[1]^2 - 6*x[1] - x[3]^2 - 9
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := "NA";

return s;

