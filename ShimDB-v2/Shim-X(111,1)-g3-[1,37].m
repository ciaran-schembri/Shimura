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

s`ShimLabel := "111.1-[1,37]";

s`ShimDiscriminant :=  111;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 37 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -1, -2, -4, -7, -9, -10, -10, -5, -1]), Polynomial([RationalField() | 1, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, -44, 16, -2, -150, 94, 297, -170, -331, 170, 297, -94, -150, 2, 16, 44, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/3*x[1]^2*x[3]^6 + 1/3*x[1]*x[3]^7 - 1/3*x[3]^8,
-5/162*x[1]^8*x[3]^24 + 5/81*x[1]^7*x[3]^25 - 5/81*x[1]^6*x[3]^26 - 5/162*x[1]^5*x[3]^27 + 19/162*x[1]^4*x[3]^28 + 5/162*x[1]^3*x[3]^29 - 5/81*x[1]^2*x[3]^30 - 5/81*x[1]*x[3]^31 + 1/54*x[2]*x[3]^24 - 5/162*x[3]^32,
1/3*x[1]^2*x[3]^6 - 2/3*x[1]*x[3]^7 - 1/3*x[3]^8
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

