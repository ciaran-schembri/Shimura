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

s`ShimLabel := "10.19-[1,190]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 190 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -3, 0, 2, 1, -3, 1]), Polynomial([RationalField() | 1, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-8*x[1]^6 + 57*x[1]^4 - 40*x[1]^2 - x[2]^2 + 16,
5*x[1]^2 - x[3]^2 - 32
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[1] + 1/20*x[3]^2 + 8/5,
1/160*x[1]*x[2]*x[3]^2 + 1/5*x[1]*x[2] + 1/200*x[1]*x[3]^4 + 8/25*x[1]*x[3]^2 + 128/25*x[1] - 7/8000*x[3]^6 - 173/2000*x[3]^4 - 356/125*x[3]^2 - 3904/125,
1/10*x[3]^2 + 16/5
] >;
return s;

