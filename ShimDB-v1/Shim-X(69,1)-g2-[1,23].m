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

s`ShimLabel := "69.1-[1,23]";

s`ShimDiscriminant :=  69;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 23 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -1, 0, 13, 13, -11, 3]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -2187, 0, -2268, 0, -666, 0, 1268, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/36*x[1]^2*x[3]^4 + 1/4*x[3]^6,
5/23328*x[1]^6*x[3]^12 - 1/432*x[1]^4*x[3]^14 + 1/288*x[1]^2*x[3]^16 - 1/2592*x[1]*x[2]*x[3]^13,
-1/9*x[1]^2*x[3]^4
] >;
return s;

