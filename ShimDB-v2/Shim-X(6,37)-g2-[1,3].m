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

s`ShimLabel := "6.37-[1,3]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -7, -27, 0, 104, 0, -27, -7]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[1]^2*x[3]^4 + 1/4*x[1]*x[3]^5 - 1/2*x[3]^6,
-3/16*x[1]^5*x[3]^13 - 25/64*x[1]^3*x[3]^15 - 3/16*x[1]*x[3]^17 - 1/64*x[2]*x[3]^12,
1/2*x[1]^2*x[3]^4 + 1/4*x[1]*x[3]^5 + 1/2*x[3]^6
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Two Cover Descent";

s`ShimPointsEverywhereLocally := true;

return s;

