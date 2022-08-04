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

s`ShimLabel := "10.13-[1,2]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -3, 23, -63, 72, -63, 23, -3]), Polynomial([RationalField() | 0, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
5*x[1]^4 - 74*x[1]^2 - x[2]^2 + 325,
-2*x[1]^2 - x[3]^2 - 25
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1] + 1/20*x[3]^2 + 5/4,
1/400*x[1]*x[2]*x[3]^3 + 1/16*x[1]*x[2]*x[3] + 1/800*x[1]*x[3]^4 + 1/8*x[1]*x[3]^2 + 75/32*x[1],
1/2*x[1] - 1/20*x[3]^2 - 5/4
] >;
return s;

