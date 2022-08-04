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

s`ShimLabel := "194.1-[1]";

s`ShimDiscriminant :=  194;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  9;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -19, 92, -286, 592, -921, 1016, -872, -460, 1545, -1752, 34, 1752, 1545, 460, -872, -1016, -921, -592, -286, -92, -19]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 92, -286, 592, -921, 1016, -872, -460, 1545, -1752, 34, 1752, 1545, 460, -872, -1016, -921, -592, -286, -92, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

