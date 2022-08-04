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

s`ShimLabel := "6.37-[1,111]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 111 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 20, 48, 30, -12, -89, -12, 30, 48, 20]), Polynomial([RationalField() | 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-2/3*x[1]^2*x[3]^6 - 1/3*x[3]^8,
-2/81*x[1]^8*x[3]^24 - 10/81*x[1]^6*x[3]^26 - 11/54*x[1]^4*x[3]^28 - 10/81*x[1]^2*x[3]^30 + 1/54*x[1]*x[2]*x[3]^25 - 2/81*x[3]^32,
1/3*x[1]^2*x[3]^6 + 2/3*x[3]^8
] >;
s`ShimRationalPoints := {
[ -1, -2, 2 ],
[ -2, -2, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback from quotient";

s`ShimPointsEverywhereLocally := true;

return s;

