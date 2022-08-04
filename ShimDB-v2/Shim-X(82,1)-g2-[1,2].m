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

s`ShimLabel := "82.1-[1,2]";

s`ShimDiscriminant :=  82;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -13, 25, -56, 47, -31, 4, -1]), Polynomial([RationalField() | 0, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
16*x[1]^4 - 32*x[1]^3 + 1032*x[1]^2 + 1576*x[1] - x[2]^2 + 1549,
-3*x[1]^2 - x[3]^2 - 6
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/48*x[2]^2 + 1/27*x[3]^4 - 125/18*x[3]^2 - 697/16,
-1/5832*x[2]^2*x[3]^6 - 397/7776*x[2]^2*x[3]^4 - 36695/10368*x[2]^2*x[3]^2 + 546325/13824*x[2]^2 + 1/729*x[2]*x[3]^7 + 205/324*x[2]*x[3]^5 + 42025/432*x[2]*x[3]^3 + 8615125/1728*x[2]*x[3] + 2/6561*x[3]^10 + 131/4374*x[3]^8 - 37339/2916*x[3]^6 - 704749/432*x[3]^4 - 11355155/1152*x[3]^2 - 18953275/512,
-1/3*x[3]^2 - 205/4
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

