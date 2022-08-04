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

s`ShimLabel := "6.31-[1,62]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 62 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 162, -432, -88, 847, -191, -473, 155, 36, -60]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/8*x[1]^2*x[3]^5 - 3/8*x[3]^7,
-1/1024*x[1]^6*x[3]^22 + 7/1024*x[1]^4*x[3]^24 + 5/1024*x[1]^2*x[3]^26 + 1/1024*x[1]*x[2]*x[3]^21 - 75/1024*x[3]^28,
1/8*x[1]^2*x[3]^5 - 5/8*x[3]^7
] >;
s`ShimRationalPoints := {
[ 3, -300, 5 ],
[ -1, 0, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback from quotient";

s`ShimPointsEverywhereLocally := true;

return s;

