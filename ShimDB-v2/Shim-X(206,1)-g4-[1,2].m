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

s`ShimLabel := "206.1-[1,2]";

s`ShimDiscriminant :=  206;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -76, -64, 82, 40, 8, -3, -30, 16, -8, 3, -1]), Polynomial([RationalField() | 0, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18224, 0, -28840, 0, -19883, 0, -6646, 0, -733, 0, 220, 0, 331, 0, 42, 0, 13, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]^2*x[3]^8 + 1/4*x[3]^10,
-5/16384*x[1]^10*x[3]^40 - 3/16384*x[1]^8*x[3]^42 + 7/8192*x[1]^6*x[3]^44 - 19/8192*x[1]^4*x[3]^46 + 71/16384*x[1]^2*x[3]^48 + 1/1024*x[2]*x[3]^40 - 39/16384*x[3]^50,
1/8*x[1]^2*x[3]^8 + 3/8*x[3]^10
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

