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

s`ShimLabel := "39.2-[1,2]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -2, 22, -98, 196, -157, 64, -157, 196, -98, 22, -2]), Polynomial([RationalField() | 1, 0, 0, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]*x[3]^9,
1/2*x[1]^10*x[3]^40 + 15/2*x[1]^9*x[3]^41 + 50*x[1]^8*x[3]^42 + 195*x[1]^7*x[3]^43 + 985/2*x[1]^6*x[3]^44 + 842*x[1]^5*x[3]^45 + 985*x[1]^4*x[3]^46 + 780*x[1]^3*x[3]^47 + 1/2*x[1]^2*x[2]*x[3]^40 + 400*x[1]^2*x[3]^48 + 120*x[1]*x[3]^49 - x[2]*x[3]^42 + 16*x[3]^50,
-x[1]^2*x[3]^8 - 3*x[1]*x[3]^9 - 2*x[3]^10
] >;
return s;

