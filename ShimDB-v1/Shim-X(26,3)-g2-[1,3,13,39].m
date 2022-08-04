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

s`ShimLabel := "26.3-[1,3,13,39]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 3, 13, 39 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, 6, -23, 16, 3, 2]), Polynomial([RationalField() | 0, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
x[1]^6 - 2*x[1]^4 + 9*x[1]^2 - x[2]^2 + 8,
-8*x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/8*x[3]^2 + 3/8,
1/2*x[1]*x[2]*x[3] - 1/128*x[3]^4 - 7/64*x[3]^2 - 33/128,
1
] >;
return s;

