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

s`ShimLabel := "10.13-[1,26]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner :=  [ 1, 26 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -53, 50, -172, 100, -172, 50, -53]), Polynomial([RationalField() |])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
5*x[1]^4 - 74*x[1]^2 - x[2]^2 + 325,
-2*x[1]^2 - x[3]^2 - 25
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/10*x[3] + 1/2,
1/50*x[1]*x[2],
-1/10*x[3] - 1/2
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

