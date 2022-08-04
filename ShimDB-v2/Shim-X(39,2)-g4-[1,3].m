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

s`ShimLabel := "39.2-[1,3]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -96, -240, -524, -688, -796, -655, -470, -240, -101, -26, -4]), Polynomial([RationalField() | 0, 0, 0, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/3*x[1]^2*x[3]^8 - 2/3*x[3]^10,
-1/486*x[1]^10*x[3]^40 - 1/162*x[1]^9*x[3]^41 - 1/243*x[1]^8*x[3]^42 + 1/81*x[1]^7*x[3]^43 + 29/486*x[1]^6*x[3]^44 + 2/27*x[1]^5*x[3]^45 - 23/243*x[1]^4*x[3]^46 - 20/81*x[1]^3*x[3]^47 - 1/54*x[1]^2*x[2]*x[3]^40 - 10/243*x[1]^2*x[3]^48 - 1/27*x[1]*x[2]*x[3]^41 + 16/81*x[1]*x[3]^49 - 1/27*x[2]*x[3]^42 + 28/243*x[3]^50,
-1/3*x[1]^2*x[3]^8 - x[1]*x[3]^9 - 1/3*x[3]^10
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

