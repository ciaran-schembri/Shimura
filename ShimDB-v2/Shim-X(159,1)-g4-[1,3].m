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

s`ShimLabel := "159.1-[1,3]";

s`ShimDiscriminant :=  159;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -1, -26, -38, 141, -19, -113, 31, 27, -6, -2, -1]), Polynomial([RationalField() | 1, 1, 1, 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, 0, 134, 0, -447, 0, -32376, 0, 113578, 0, 1211556, 0, -6650118, 0, -8888824, 0, -4367079, 0, -1132218, 0, -177147]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
7/12*x[1]^2*x[3]^8 + 1/12*x[3]^10,
-42437/497664*x[1]^10*x[3]^40 - 8539/497664*x[1]^8*x[3]^42 - 2569/248832*x[1]^6*x[3]^44 - 91/248832*x[1]^4*x[3]^46 - 25/497664*x[1]^2*x[3]^48 + 1/55296*x[2]*x[3]^40 + 1/497664*x[3]^50,
5/12*x[1]^2*x[3]^8 - 1/12*x[3]^10
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

