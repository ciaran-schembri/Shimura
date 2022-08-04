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

s`ShimLabel := "6.31-[1,93]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 93 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -1, 7, -8, -22, 9, 24, 8]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/16*x[1]^2*x[3]^4 - 1/2*x[1]*x[3]^5 - 3/16*x[3]^6,
1/4096*x[1]^6*x[3]^12 - 55/4096*x[1]^4*x[3]^14 - 165/4096*x[1]^2*x[3]^16 - 1/4096*x[2]*x[3]^12 + 27/4096*x[3]^18,
1/8*x[1]^2*x[3]^4 + 3/8*x[3]^6
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

