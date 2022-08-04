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

s`ShimLabel := "22.5-[1,22]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 22 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -1024, 0, -915, 0, -311, 0, -48, 0, -3]), Polynomial([RationalField() | 0, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, 0, -80, 0, -240, 0, -362, 0, -240, 0, -80, 0, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^6 - x[3]^8,
-1/2*x[1]^8*x[3]^24 + 3/2*x[1]^6*x[3]^26 - 2*x[1]^4*x[3]^28 + 1/2*x[1]^2*x[2]*x[3]^24 + 3/2*x[1]^2*x[3]^30 + 1/2*x[2]*x[3]^26 - 1/2*x[3]^32,
-x[1]*x[3]^7
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

