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

s`ShimLabel := "26.3-[1,39]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 39 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -6, 6, 19, 29, 19, 7, 3, 1]), Polynomial([RationalField() | 1, 0, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
x[1]^6 - 2*x[1]^4 + 9*x[1]^2 - x[2]^2 + 8,
-8*x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[3] - 1/2,
2*x[1]*x[2] - 1/32*x[3]^4 - 1/8*x[3]^3 - 5/16*x[3]^2 - 3/8*x[3] - 21/32,
1
] >;
return s;

