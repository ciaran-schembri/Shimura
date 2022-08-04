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

s`ShimLabel := "74.1-[1,2]";

s`ShimDiscriminant :=  74;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -5, 17, -7, -8, -8, -16, -6]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1369, 0, -4158, 0, 946, 0, -328, 0, 47, 0, -2]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/8*x[1]^2*x[3]^4 + 5/8*x[3]^6,
1/512*x[1]^6*x[3]^12 - 3/512*x[1]^4*x[3]^14 - 13/512*x[1]^2*x[3]^16 - 1/128*x[1]*x[2]*x[3]^12 + 15/512*x[3]^18,
-1/8*x[1]^2*x[3]^4 - 3/8*x[3]^6
] >;
s`ShimRationalPoints := {
[ -5, -15, 3 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

