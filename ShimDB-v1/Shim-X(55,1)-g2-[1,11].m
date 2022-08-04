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

s`ShimLabel := "55.1-[1,11]";

s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 11 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -3, -2, -10, 1, -6, 0, -1]), Polynomial([RationalField() | 0, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, -2, 3, 8, -3, -8, 3, 2, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^4 - x[3]^6,
-1/2*x[1]^6*x[3]^12 - 1/2*x[1]^5*x[3]^13 + x[1]^4*x[3]^14 + x[1]^3*x[3]^15 - 1/2*x[1]^2*x[2]*x[3]^12 - x[1]^2*x[3]^16 - 1/2*x[1]*x[3]^17 - 1/2*x[2]*x[3]^14 + 1/2*x[3]^18,
x[1]*x[3]^5
] >;
return s;

