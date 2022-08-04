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

s`ShimLabel := "57.1-[1]";

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  3;

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimModel:=Curve(AS, [
9*x[1]^4 + 36*x[1]^3 + 62*x[1]^2 + 20*x[1] - x[2]^2 + 1,
-4*x[1]^2 + 2*x[1] - x[3]^2 - 1
]);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^4 + 36*x[1]^3 + 62*x[1]^2 + 20*x[1] - x[2]^2 + 1,
-4*x[1]^2 + 2*x[1] - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

