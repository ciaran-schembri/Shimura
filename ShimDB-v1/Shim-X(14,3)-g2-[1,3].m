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

s`ShimLabel := "14.3-[1,3]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -3, -19, -34, -32, -21, -6, -2]), Polynomial([RationalField() | 1, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-7*x[1]^4 + 22*x[1]^2 - x[2]^2 + 1,
-9*x[1]^2 - x[3]^2 - 2
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1] + 1/18*x[3]^2 + 1/9,
-1/72*x[1]*x[2]*x[3]^3 - 1/36*x[1]*x[2]*x[3] + 1/1944*x[3]^6 + 1/648*x[3]^4 - 1/486,
-1/9*x[3]^2 - 2/9
] >;
return s;

