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

s`ShimLabel := "39.2-[1,2,3,6]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -3, -3, -2, 1, 1]), Polynomial([RationalField() | 0, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/9*x[1]^4*x[3]^8 + 4/9*x[1]^2*x[3]^10 - 4/9*x[3]^12,
7/1458*x[1]^12*x[3]^24 + 5/162*x[1]^11*x[3]^25 + 22/243*x[1]^10*x[3]^26 + 4/27*x[1]^9*x[3]^27 + 23/486*x[1]^8*x[3]^28 - 34/81*x[1]^7*x[3]^29 - 722/729*x[1]^6*x[3]^30 - 68/81*x[1]^5*x[3]^31 - 1/162*x[1]^4*x[2]*x[3]^24 + 46/243*x[1]^4*x[3]^32 - 1/81*x[1]^3*x[2]*x[3]^25 + 32/27*x[1]^3*x[3]^33 + 352/243*x[1]^2*x[3]^34 + 2/81*x[1]*x[2]*x[3]^27 + 80/81*x[1]*x[3]^35 + 2/81*x[2]*x[3]^28 + 224/729*x[3]^36,
-2/9*x[1]^4*x[3]^8 - x[1]^3*x[3]^9 - 19/9*x[1]^2*x[3]^10 - 2*x[1]*x[3]^11 - 8/9*x[3]^12
] >;
s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, -1, 0 ],
[ 1, 0, 0 ],
[ -1, 2, 1 ],
[ -1, -1, 1 ],
[ -4, 26, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

