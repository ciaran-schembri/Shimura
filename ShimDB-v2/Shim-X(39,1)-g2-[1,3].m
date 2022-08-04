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

s`ShimLabel := "39.1-[1,3]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -4, 6, 1, 3, -8, -3, -2]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -7, -30, -21, 48, 37, -48, -21, 30, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^4 - x[1]*x[3]^5 - x[3]^6,
-1/2*x[1]^6*x[3]^12 + 3/2*x[1]^5*x[3]^13 - 3*x[1]^3*x[3]^15 - 1/2*x[1]^2*x[2]*x[3]^12 + 3/2*x[1]*x[3]^17 - 1/2*x[2]*x[3]^14 + 1/2*x[3]^18,
x[1]*x[3]^5
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

