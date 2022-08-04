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

s`ShimLabel := "95.1-[1,5]";

s`ShimDiscriminant :=  95;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -11, 3, -31, 45, -60, 38, -23, 6, -2]), Polynomial([RationalField() | 1, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -7, 26, -33, -26, 103, -50, -124, 112, 79, -112, -124, 50, 103, 26, -33, -26, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^6 - x[3]^8,
-1/2*x[1]^8*x[3]^24 + 1/2*x[1]^7*x[3]^25 + 3/2*x[1]^6*x[3]^26 - x[1]^5*x[3]^27 - 5/2*x[1]^4*x[3]^28 + x[1]^3*x[3]^29 + 3/2*x[1]^2*x[3]^30 - 1/2*x[1]*x[3]^31 + 1/2*x[2]*x[3]^24 - 1/2*x[3]^32,
-x[1]*x[3]^7
] >;
return s;

