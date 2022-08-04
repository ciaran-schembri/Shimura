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

s`ShimLabel := "15.2-[1,2]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -2, -8, -9, -3, -9, -8, -2]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 + x[3]^6,
-3/8*x[1]^5*x[3]^13 - 13/8*x[1]^3*x[3]^15 - 1/8*x[1]^2*x[2]*x[3]^12 - 3/2*x[1]*x[3]^17 + 1/4*x[2]*x[3]^14,
-1/2*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 - x[3]^6
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

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

s`ShimLabel := "15.2-[1,2]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -2, -8, -9, -3, -9, -8, -2]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 + x[3]^6,
-3/8*x[1]^5*x[3]^13 - 13/8*x[1]^3*x[3]^15 - 1/8*x[1]^2*x[2]*x[3]^12 - 3/2*x[1]*x[3]^17 + 1/4*x[2]*x[3]^14,
-1/2*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 - x[3]^6
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Does Not Have Points Everywhere Locally";

s`ShimPointsEverywhereLocally := false;

return s;

