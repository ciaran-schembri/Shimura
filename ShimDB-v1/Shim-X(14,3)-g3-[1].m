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

s`ShimLabel := "14.3-[1]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  3;

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimModel:=Curve(AS, [
-7*x[1]^4 + 22*x[1]^2 - x[2]^2 + 1,
-9*x[1]^2 - x[3]^2 - 2
]);
s`ShimTopCurve:=Curve(AS, [
-7*x[1]^4 + 22*x[1]^2 - x[2]^2 + 1,
-9*x[1]^2 - x[3]^2 - 2
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

