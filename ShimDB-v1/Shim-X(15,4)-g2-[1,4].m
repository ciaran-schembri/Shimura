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

s`ShimLabel := "15.4-[1,4]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  4;
s`ShimAtkinLehner :=  [ 1, 4 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -1, 3, -4, 3, -1]), Polynomial([RationalField() | 1, 0, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-80*x[1]^6 - 83*x[1]^4 - 26*x[1]^2 - x[2]^2 - 3,
-3*x[1]^2 - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]*x[3] - 1/6*x[3]^2 - 1/6,
1/96*x[1]*x[2]*x[3]^2 + 1/96*x[1]*x[2] - 5/864*x[3]^6 - 1/144*x[3]^4 + 1/288*x[3]^2 + 1/216,
1/4*x[1]*x[3] - 1/6*x[3]^2 - 1/6
] >;
return s;

