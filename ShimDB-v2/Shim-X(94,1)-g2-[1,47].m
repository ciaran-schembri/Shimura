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

s`ShimLabel := "94.1-[1,47]";

s`ShimDiscriminant :=  94;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 47 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -3, 7, -2, -1, -3, -2]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -256, 0, 381, 0, -234, 0, 69, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^3 - 2*x[3]^5,
-1/2*x[1]^4*x[3]^11 + 3/2*x[1]^2*x[3]^13 - 1/2*x[1]*x[2]*x[3]^10 - x[3]^15,
x[3]^5
] >;
s`ShimRationalPoints := {
[ -2, -1, 1 ],
[ 1, 0, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

