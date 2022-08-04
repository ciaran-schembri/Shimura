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

s`ShimLabel := "22.5-[1,5]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -29, 61, -107, 100, -78, 33, -11]), Polynomial([RationalField() | 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, 0, -80, 0, -240, 0, -362, 0, -240, 0, -80, 0, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 - 1/2*x[3]^6,
-1/8*x[1]^5*x[3]^13 - 1/2*x[1]^4*x[3]^14 - 5/8*x[1]^3*x[3]^15 + 1/2*x[1]^2*x[3]^16 - 1/8*x[1]*x[3]^17 - 1/8*x[2]*x[3]^12,
x[1]*x[3]^5
] >;
return s;

