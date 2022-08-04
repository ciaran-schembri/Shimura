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

s`ShimLabel := "26.3-[1,2]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -149, -49, -111, -21, -26, -2, -2]), Polynomial([RationalField() | 0, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
x[1]^6 - 2*x[1]^4 + 9*x[1]^2 - x[2]^2 + 8,
-8*x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/6*x[1]*x[3] - 5/48*x[3]^2 - 5/16,
1/64*x[1]*x[2]*x[3]^2 + 3/64*x[1]*x[2] + 1/1152*x[1]*x[3]^5 + 1/192*x[1]*x[3]^3 + 1/128*x[1]*x[3] + 13/36864*x[3]^6 + 31/12288*x[3]^4 + 23/4096*x[3]^2 + 15/4096,
-1/6*x[1]*x[3] - 1/48*x[3]^2 - 1/16
] >;
return s;

