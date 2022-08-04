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

s`ShimLabel := "6.17-[1,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -321, -379, -446, -143, -94, -27, -9]), Polynomial([RationalField() |])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
17*x[1]^4 - 10*x[1]^2 - x[2]^2 + 9,
-3*x[1]^2 - x[3]^2 - 16
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]*x[3] + 1/6*x[3]^2 + 8/3,
-8/3*x[1]*x[2]*x[3]^2 - 128/3*x[1]*x[2],
-1/3*x[3]^2 - 16/3
] >;
return s;

