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

s`ShimLabel := "15.4-[1,12]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  4;
s`ShimAtkinLehner :=  [ 1, 12 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -320, 0, -71, 0, 8, 0, 2]), Polynomial([RationalField() | 0, 0, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-80*x[1]^6 - 83*x[1]^4 - 26*x[1]^2 - x[2]^2 - 3,
-3*x[1]^2 - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1,
9/8*x[1]*x[2] - 1/8*x[3]^2 - 1/2,
1/2*x[3]
] >;
s`ShimRationalPoints := {
[ 1, -1, 0 ],
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback from quotient";

s`ShimPointsEverywhereLocally := true;

return s;

