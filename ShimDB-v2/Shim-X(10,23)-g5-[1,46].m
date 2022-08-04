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

s`ShimLabel := "10.23-[1,46]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 46 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -300800, 374400, -454352, 231800, -142651, 32659, -15073, 1007, -1597, 387, -254, 49, -11]), Polynomial([RationalField() | 0, 0, 0, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^10 - x[1]*x[3]^11 - x[3]^12,
-1/2*x[1]^12*x[3]^60 + 7/2*x[1]^11*x[3]^61 - 15/2*x[1]^10*x[3]^62 + 35/2*x[1]^8*x[3]^64 - 17/2*x[1]^7*x[3]^65 - 21*x[1]^6*x[3]^66 + 17/2*x[1]^5*x[3]^67 + 35/2*x[1]^4*x[3]^68 + 1/2*x[1]^2*x[2]*x[3]^60 - 15/2*x[1]^2*x[3]^70 - 7/2*x[1]*x[3]^71 + 1/2*x[2]*x[3]^62 - 1/2*x[3]^72,
-x[1]*x[3]^11
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

