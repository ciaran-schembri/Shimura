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

s`ShimLabel := "10.23-[1,5,23,115]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 5, 23, 115 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 5, 15, 12, -27, 1, -2]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]^4*x[3]^8 + 1/2*x[1]^3*x[3]^9 - 5/4*x[1]^2*x[3]^10 - 1/2*x[1]*x[3]^11 - 1/4*x[3]^12,
3/512*x[1]^12*x[3]^24 - 1/256*x[1]^11*x[3]^25 + 9/512*x[1]^10*x[3]^26 + 19/256*x[1]^9*x[3]^27 - 3/256*x[1]^8*x[3]^28 + 31/256*x[1]^7*x[3]^29 + 93/512*x[1]^6*x[3]^30 - 31/256*x[1]^5*x[3]^31 - 3/256*x[1]^4*x[3]^32 - 19/256*x[1]^3*x[3]^33 - 1/256*x[1]^2*x[2]*x[3]^24 + 9/512*x[1]^2*x[3]^34 - 1/256*x[1]*x[2]*x[3]^25 + 1/256*x[1]*x[3]^35 + 1/256*x[2]*x[3]^26 + 3/512*x[3]^36,
-1/8*x[1]^4*x[3]^8 - 1/4*x[1]^3*x[3]^9 + 1/8*x[1]^2*x[3]^10 + 1/4*x[1]*x[3]^11 - 1/8*x[3]^12
] >;
s`ShimRationalPoints := {
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

