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

s`ShimLabel := "15.4-[1]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  4;
s`ShimAtkinLehner :=  [ 1 ];
s`ShimGenus :=  5;

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimModel:=Curve(AS, [
-80*x[1]^6 - 83*x[1]^4 - 26*x[1]^2 - x[2]^2 - 3,
-3*x[1]^2 - x[3]^2 - 1
]);
s`ShimTopCurve:=Curve(AS, [
-80*x[1]^6 - 83*x[1]^4 - 26*x[1]^2 - x[2]^2 - 3,
-3*x[1]^2 - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1],
x[2],
x[3]
] >;
return s;

