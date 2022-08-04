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

s`ShimLabel := "95.1-[1,19]";

s`ShimDiscriminant :=  95;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 19 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -43, 14, -132, 187, -266, 201, -149, 64, -30, 6, -2]), Polynomial([RationalField() | 0, 1, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -7, 26, -33, -26, 103, -50, -124, 112, 79, -112, -124, 50, 103, 26, -33, -26, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^8 - x[3]^10,
-1/2*x[1]^10*x[3]^40 + 1/2*x[1]^9*x[3]^41 + 2*x[1]^8*x[3]^42 - 3/2*x[1]^7*x[3]^43 - 4*x[1]^6*x[3]^44 + 2*x[1]^5*x[3]^45 + 4*x[1]^4*x[3]^46 - 3/2*x[1]^3*x[3]^47 + 1/2*x[1]^2*x[2]*x[3]^40 - 2*x[1]^2*x[3]^48 + 1/2*x[1]*x[3]^49 + 1/2*x[2]*x[3]^42 + 1/2*x[3]^50,
-x[1]*x[3]^9
] >;
return s;

