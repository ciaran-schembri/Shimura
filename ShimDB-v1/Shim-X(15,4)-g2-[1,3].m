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

s`ShimLabel := "15.4-[1,3]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  4;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -3, 9, -18, 20, -18, 9, -3]), Polynomial([RationalField() | 0, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-80*x[1]^6 - 83*x[1]^4 - 26*x[1]^2 - x[2]^2 - 3,
-3*x[1]^2 - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1] + 1/6*x[3]^2 + 1/6,
1/24*x[1]*x[2]*x[3]^2 + 1/24*x[1]*x[2] + 1/72*x[1]*x[3]^4 + 5/72*x[1]*x[3]^2 + 1/18*x[1],
1/2*x[1] - 1/6*x[3]^2 - 1/6
] >;
return s;

