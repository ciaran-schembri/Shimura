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

s`ShimLabel := "51.1-[1,17]";

s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 17 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -3, 19, -21, -39, -15, -2]), Polynomial([RationalField() | 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, 0, 92, 0, -674, 0, -964, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]^2*x[3]^4,
17/32*x[1]^6*x[3]^12 - 1/16*x[1]^4*x[3]^14 + 1/32*x[1]^2*x[3]^16 - 1/32*x[1]*x[2]*x[3]^13,
1/4*x[1]^2*x[3]^4 - 1/4*x[3]^6
] >;
return s;

