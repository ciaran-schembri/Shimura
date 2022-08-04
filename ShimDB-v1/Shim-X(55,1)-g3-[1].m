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

s`ShimLabel := "55.1-[1]";

s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -3, -2, 3, 8, -3, -8, 3, 2, -3]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, -2, 3, 8, -3, -8, 3, 2, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

