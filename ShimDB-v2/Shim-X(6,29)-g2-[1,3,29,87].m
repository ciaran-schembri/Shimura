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

s`ShimLabel := "6.29-[1,3,29,87]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 3, 29, 87 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, 144, -117, -42, 21, 6]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, 13008, 0, -12264, 0, 4597, 0, -3066, 0, 813, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^9,
-1/162*x[1]^10*x[3]^23 + 17/162*x[1]^8*x[3]^25 - 10/27*x[1]^6*x[3]^27 - 1/162*x[1]^5*x[2]*x[3]^22 + 34/81*x[1]^4*x[3]^29 - 8/81*x[1]^2*x[3]^31 + 2/81*x[1]*x[2]*x[3]^26,
-1/9*x[1]^4*x[3]^7 + 4/9*x[1]^2*x[3]^9 - 4/9*x[3]^11
] >;
s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 1, 0, 0 ],
[ 9, -612, 8 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

