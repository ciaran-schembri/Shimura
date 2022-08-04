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

s`ShimLabel := "14.5-[1,35]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 35 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -23, 67, 24, -181, 88, 3, -1]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]*x[3]^5 - 1/2*x[3]^6,
-1/8*x[1]^2*x[2]*x[3]^12 + 1/8*x[1]*x[2]*x[3]^13 + 1/8*x[2]*x[3]^14,
-1/2*x[1]^2*x[3]^4 - 1/2*x[3]^6
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

