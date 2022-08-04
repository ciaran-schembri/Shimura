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

s`ShimLabel := "111.1-[1]";

s`ShimDiscriminant :=  111;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  7;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -19, -44, 16, -2, -150, 94, 297, -170, -331, 170, 297, -94, -150, 2, 16, 44, -19]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, -44, 16, -2, -150, 94, 297, -170, -331, 170, 297, -94, -150, 2, 16, 44, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

