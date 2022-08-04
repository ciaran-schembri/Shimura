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

s`ShimLabel := "206.1-[1,103]";

s`ShimDiscriminant :=  206;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 103 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -1024, -4556, -7210, -4971, -1662, -184, 54, 82, 10, 3, -2]), Polynomial([RationalField() | 0, 0, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18224, 0, -28840, 0, -19883, 0, -6646, 0, -733, 0, 220, 0, 331, 0, 42, 0, 13, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^9,
-1/2*x[1]^10*x[3]^56 - 1/2*x[1]^8*x[3]^58 - 1/2*x[1]^6*x[3]^60 - 1/2*x[1]^4*x[3]^62 - 1/2*x[1]*x[2]*x[3]^55,
x[3]^11
] >;
s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

