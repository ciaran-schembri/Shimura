Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations,
 ShimRationalPoints,
 ShimPointsProvedCorrect,
 ShimPointsNotes,
 ShimPointsEverywhereLocally
>;
s := rec< RF | >;

s`ShimLabel := "10.13-[1,5]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -22, -58, -106, -109, -87, -39, -13]), Polynomial([RationalField() | 1, 1, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
5*x[1]^4 - 74*x[1]^2 - x[2]^2 + 325,
-2*x[1]^2 - x[3]^2 - 25
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]*x[3] + 1/4*x[3]^2 + 25/4,
-25/16*x[1]*x[2]*x[3]^2 - 625/16*x[1]*x[2] + 1/64*x[3]^6 + 125/64*x[3]^4 + 4375/64*x[3]^2 + 46875/64,
-1/2*x[3]^2 - 25/2
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

