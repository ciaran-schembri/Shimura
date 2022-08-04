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

s`ShimLabel := "206.1-[1]";

s`ShimDiscriminant :=  206;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  9;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18224, 0, -28840, 0, -19883, 0, -6646, 0, -733, 0, 220, 0, 331, 0, 42, 0, 13, 0, -8]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18224, 0, -28840, 0, -19883, 0, -6646, 0, -733, 0, 220, 0, 331, 0, 42, 0, 13, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

