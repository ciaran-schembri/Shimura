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

s`ShimLabel := "6.19-[1,2]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -10, 22, 22, -19, -57, -57, -19]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 0, 210, 0, -625, 0, 210, 0, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]^2*x[3]^4 - 1/2*x[1]*x[3]^5 - 1/2*x[3]^6,
-1/8*x[1]^5*x[3]^13 + 3/8*x[1]^3*x[3]^15 - 1/8*x[1]^2*x[2]*x[3]^12 - 1/8*x[1]*x[3]^17 - 1/8*x[2]*x[3]^14,
x[1]*x[3]^5
] >;
return s;

