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

s`ShimLabel := "6.29-[1,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 219, -557, -210, 630, 155, -192, -64]), Polynomial([RationalField() | 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, 13008, 0, -12264, 0, 4597, 0, -3066, 0, 813, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]^2*x[3]^4 - 1/2*x[1]*x[3]^5 + x[3]^6,
-1/8*x[1]^5*x[3]^13 - 7/8*x[1]^3*x[3]^15 - 1/2*x[1]*x[3]^17 - 1/8*x[2]*x[3]^12,
x[1]*x[3]^5
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Two Cover Descent";

s`ShimPointsEverywhereLocally := true;

return s;

