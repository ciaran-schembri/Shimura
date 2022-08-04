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

s`ShimLabel := "10.19-[1,95]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 95 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -12, -36, 7, 91, 55, 13, 5, 1]), Polynomial([RationalField() | 1, 0, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-8*x[1]^6 + 57*x[1]^4 - 40*x[1]^2 - x[2]^2 + 16,
5*x[1]^2 - x[3]^2 - 32
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]*x[3] + 8,
-60*x[1]*x[2]*x[3]^3 - 1600*x[1]*x[2]*x[3] - 1/5*x[1]*x[3]^7 - 56/5*x[1]*x[3]^5 - 1168/5*x[1]*x[3]^3 - 1536*x[1]*x[3] - 28*x[2]*x[3]^4 - 1280*x[2]*x[3]^2 - 12800*x[2] - 3/25*x[3]^8 - 272/25*x[3]^6 - 10192/25*x[3]^4 - 35584/5*x[3]^2 - 43008,
-1/2*x[1]*x[3] - 1/2*x[3]^2 - 16
] >;
s`ShimRationalPoints := {
[ 1, -1, 0 ],
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback from quotient";

s`ShimPointsEverywhereLocally := true;

return s;

