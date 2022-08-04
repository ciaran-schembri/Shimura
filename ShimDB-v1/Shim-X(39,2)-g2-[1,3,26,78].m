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

s`ShimLabel := "39.2-[1,3,26,78]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 3, 26, 78 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, 13, -47, 14, -4, -10, -2]), Polynomial([RationalField() | 0, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4*x[3]^8 + 4*x[1]^3*x[3]^9 + 8*x[1]^2*x[3]^10 + 8*x[1]*x[3]^11 + 4*x[3]^12,
-1/2*x[1]^12*x[3]^24 - 13/2*x[1]^11*x[3]^25 - 42*x[1]^10*x[3]^26 - 174*x[1]^9*x[3]^27 - 1017/2*x[1]^8*x[3]^28 - 1096*x[1]^7*x[3]^29 - 1780*x[1]^6*x[3]^30 - 2192*x[1]^5*x[3]^31 - 1/2*x[1]^4*x[2]*x[3]^24 - 2034*x[1]^4*x[3]^32 - 3*x[1]^3*x[2]*x[3]^25 - 1392*x[1]^3*x[3]^33 - 6*x[1]^2*x[2]*x[3]^26 - 672*x[1]^2*x[3]^34 - 6*x[1]*x[2]*x[3]^27 - 208*x[1]*x[3]^35 - 2*x[2]*x[3]^28 - 32*x[3]^36,
x[1]^3*x[3]^9 + 3*x[1]^2*x[3]^10 + 2*x[1]*x[3]^11
] >;
return s;

