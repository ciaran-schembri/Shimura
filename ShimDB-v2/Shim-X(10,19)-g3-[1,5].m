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

s`ShimLabel := "10.19-[1,5]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -40, 0, 135, 0, -127, 0, 21, 0, -2]), Polynomial([RationalField() | 0, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-8*x[1]^6 + 57*x[1]^4 - 40*x[1]^2 - x[2]^2 + 16,
5*x[1]^2 - x[3]^2 - 32
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1] - 1/5,
-1/100*x[1]*x[2]*x[3]^3 - 161/500*x[1]*x[2]*x[3] + 1/2000*x[1]*x[3]^6 + 293/5000*x[1]*x[3]^4 + 111321/50000*x[1]*x[3]^2 + 345293/12500*x[1] - 1/400*x[2]*x[3]^5 - 163/1000*x[2]*x[3]^3 - 26561/10000*x[2]*x[3] + 1/2500*x[3]^6 + 581/12500*x[3]^4 + 5461/3125*x[3]^2 + 66976/3125,
1/10*x[1] + 1/10*x[3]^2 + 16/5
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

