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

s`ShimLabel := "6.17-[1,17]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner :=  [ 1, 17 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -4386, 2970, -3643, 1396, -826, 153, -51]), Polynomial([RationalField() | 0, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
17*x[1]^4 - 10*x[1]^2 - x[2]^2 + 9,
-3*x[1]^2 - x[3]^2 - 16
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[3] + 1/2,
9/8*x[1]*x[2] - 1/8*x[3]^2 - 1/2*x[3] - 3/8,
1
] >;
return s;

