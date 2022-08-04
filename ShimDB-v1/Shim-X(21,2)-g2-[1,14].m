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

s`ShimLabel := "21.2-[1,14]";

s`ShimDiscriminant :=  21;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 14 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 15, 18, 11, -5, 11, 18, 15]), Polynomial([RationalField() | 0, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-9*x[1]^6 - 89*x[1]^4 - 179*x[1]^2 - x[2]^2 + 21,
-x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]*x[3]^2 + 1/2*x[3]^3 + 3/2*x[3],
9/32*x[1]*x[2]*x[3]^4 + 27/32*x[1]*x[2]*x[3]^2 - 5/64*x[1]*x[3]^8 - 27/64*x[1]*x[3]^6 - 9/16*x[1]*x[3]^4,
-1/4*x[1]*x[3]^2 - 1/2*x[3]^3 - 3/2*x[3]
] >;
return s;

