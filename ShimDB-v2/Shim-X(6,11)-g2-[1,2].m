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

s`ShimLabel := "6.11-[1,2]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -5, -35, -8, 48, 9, -18, -6]), Polynomial([RationalField() | 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 166, -439, 166, 612, -166, -439, -166, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]*x[3]^5 - x[3]^6,
1/2*x[1]^6*x[3]^12 + 5/2*x[1]^5*x[3]^13 + 7/2*x[1]^4*x[3]^14 - x[1]^3*x[3]^15 - 1/2*x[1]^2*x[2]*x[3]^12 - 7/2*x[1]^2*x[3]^16 + x[1]*x[2]*x[3]^13 + 5/2*x[1]*x[3]^17 + 1/2*x[2]*x[3]^14 - 1/2*x[3]^18,
-x[1]^2*x[3]^4 - 2*x[1]*x[3]^5 + x[3]^6
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

