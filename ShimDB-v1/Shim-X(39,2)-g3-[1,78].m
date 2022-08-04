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

s`ShimLabel := "39.2-[1,78]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 78 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -2, 11, -28, 20, -5, 20, -28, 11, -2]), Polynomial([RationalField() | 1, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]*x[3]^7,
-1/2*x[1]^8*x[3]^24 - 13/2*x[1]^7*x[3]^25 - 36*x[1]^6*x[3]^26 - 110*x[1]^5*x[3]^27 - 401/2*x[1]^4*x[3]^28 - 220*x[1]^3*x[3]^29 - 144*x[1]^2*x[3]^30 - 52*x[1]*x[3]^31 - 1/2*x[2]*x[3]^24 - 8*x[3]^32,
-x[1]^2*x[3]^6 - 3*x[1]*x[3]^7 - 2*x[3]^8
] >;
return s;

