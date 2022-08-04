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

s`ShimLabel := "10.19-[1,19]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 19 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -38, 0, -3673, 0, -1425, 0, -185, 0, -8]), Polynomial([RationalField() | 0, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-8*x[1]^6 + 57*x[1]^4 - 40*x[1]^2 - x[2]^2 + 16,
5*x[1]^2 - x[3]^2 - 32
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[3],
-25/16*x[1]*x[2] - 1/16*x[3]^3 - 1/4*x[3],
-1
] >;
return s;

