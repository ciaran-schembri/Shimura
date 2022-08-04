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

s`ShimLabel := "74.1-[1,37]";

s`ShimDiscriminant :=  74;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 37 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, 4, -1, -4, 2, 1, -1]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1369, 0, -4158, 0, 946, 0, -328, 0, 47, 0, -2]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[3]^5,
-1/128*x[1]^4*x[3]^11 + 9/64*x[1]^2*x[3]^13 - 1/128*x[2]*x[3]^10 - 65/128*x[3]^15,
-1/8*x[1]^2*x[3]^3 + 5/8*x[3]^5
] >;
return s;

