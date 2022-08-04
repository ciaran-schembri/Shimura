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

s`ShimLabel := "39.2-[1,13]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 13 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -12, 24, -46, 48, -47, 28, -16, 4, -1]), Polynomial([RationalField() | 0, 0, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/3*x[1]^2*x[3]^6 - 2/3*x[3]^8,
-1/54*x[1]^8*x[3]^24 - 1/18*x[1]^7*x[3]^25 + 1/27*x[1]^6*x[3]^26 + 2/9*x[1]^5*x[3]^27 + 1/18*x[1]^4*x[3]^28 - 2/9*x[1]^3*x[3]^29 - 2/27*x[1]^2*x[3]^30 + 1/54*x[2]*x[3]^24 - 2/27*x[3]^32,
1/3*x[1]^2*x[3]^6 + x[1]*x[3]^7 + 1/3*x[3]^8
] >;
return s;

