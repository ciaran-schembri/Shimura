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

s`ShimLabel := "26.3-[1,78]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 78 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -1, 2, -2, 2, -1]), Polynomial([RationalField() | 1, 0, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
x[1]^6 - 2*x[1]^4 + 9*x[1]^2 - x[2]^2 + 8,
-8*x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[1] + 1/16*x[3]^2 + 3/16,
1/64*x[1]*x[2]*x[3]^2 + 3/64*x[1]*x[2] - 1/4096*x[3]^6 + 15/4096*x[3]^4 + 117/4096*x[3]^2 + 189/4096,
1/2*x[1] + 1/16*x[3]^2 + 3/16
] >;
return s;

