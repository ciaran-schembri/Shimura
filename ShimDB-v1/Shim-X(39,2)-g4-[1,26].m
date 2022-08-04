Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations
>;
s := rec< RF | >;

s`ShimLabel := "39.2-[1,26]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 26 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -2, -16, -61, -135, -202, -222, -202, -135, -61, -16, -2]), Polynomial([RationalField() | 1, 0, 0, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
2/3*x[1]^2*x[3]^8 + x[1]*x[3]^9 + 2/3*x[3]^10,
-31/486*x[1]^10*x[3]^40 - 25/54*x[1]^9*x[3]^41 - 385/243*x[1]^8*x[3]^42 - 85/27*x[1]^7*x[3]^43 - 1645/486*x[1]^6*x[3]^44 + 1645/243*x[1]^4*x[3]^46 + 340/27*x[1]^3*x[3]^47 - 1/54*x[1]^2*x[2]*x[3]^40 + 3080/243*x[1]^2*x[3]^48 - 2/27*x[1]*x[2]*x[3]^41 + 200/27*x[1]*x[3]^49 - 1/27*x[2]*x[3]^42 + 496/243*x[3]^50,
-1/3*x[1]^2*x[3]^8 - x[1]*x[3]^9 - 4/3*x[3]^10
] >;
return s;

