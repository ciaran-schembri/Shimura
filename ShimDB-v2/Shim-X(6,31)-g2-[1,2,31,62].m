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

s`ShimLabel := "6.31-[1,2,31,62]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 2, 31, 62 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -63, 141, -35, -69, 4, 6]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-3/64*x[1]^4*x[3]^8 + 23/32*x[1]^2*x[3]^10 - 27/64*x[3]^12,
3/131072*x[1]^12*x[3]^24 - 29/65536*x[1]^10*x[3]^26 + 85/131072*x[1]^8*x[3]^28 + 429/32768*x[1]^6*x[3]^30 - 1/16384*x[1]^5*x[2]*x[3]^25 + 765/131072*x[1]^4*x[3]^32 - 2349/65536*x[1]^2*x[3]^34 + 9/16384*x[1]*x[2]*x[3]^29 + 2187/131072*x[3]^36,
-1/64*x[1]^4*x[3]^8 - 3/32*x[1]^2*x[3]^10 - 9/64*x[3]^12
] >;
s`ShimRationalPoints := {
[ 1, 0, 0 ],
[ -7, -42, 3 ],
[ 3, -6, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

