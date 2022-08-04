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

s`ShimLabel := "39.2-[1,6]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, 1, 3, 5, 5, 5, 3, 1]), Polynomial([RationalField() | 1, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/3*x[1]^2*x[3]^6 + x[1]*x[3]^7 + 4/3*x[3]^8,
-11/162*x[1]^8*x[3]^24 - 7/18*x[1]^7*x[3]^25 - 91/81*x[1]^6*x[3]^26 - 20/9*x[1]^5*x[3]^27 - 187/54*x[1]^4*x[3]^28 - 40/9*x[1]^3*x[3]^29 - 364/81*x[1]^2*x[3]^30 - 28/9*x[1]*x[3]^31 + 1/54*x[2]*x[3]^24 - 88/81*x[3]^32,
-2/3*x[1]^2*x[3]^6 - x[1]*x[3]^7 - 2/3*x[3]^8
] >;
s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, -1, 0 ],
[ 1, 0, 0 ],
[ 0, -1, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback from quotient";

s`ShimPointsEverywhereLocally := true;

return s;

