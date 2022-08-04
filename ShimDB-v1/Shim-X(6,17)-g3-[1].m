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

s`ShimLabel := "6.17-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  3;

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimModel:=Curve(AS, [
17*x[1]^4 - 10*x[1]^2 - x[2]^2 + 9,
-3*x[1]^2 - x[3]^2 - 16
]);
s`ShimTopCurve:=Curve(AS, [
17*x[1]^4 - 10*x[1]^2 - x[2]^2 + 9,
-3*x[1]^2 - x[3]^2 - 16
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

