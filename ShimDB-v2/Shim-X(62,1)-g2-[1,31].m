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

s`ShimLabel := "62.1-[1,31]";

s`ShimDiscriminant :=  62;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 31 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 5, 1, -2, -1, -1, 2]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -8, 0, -43, 0, -90, 0, -99, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^3 + x[3]^5,
1/2*x[1]^4*x[3]^11 + 1/2*x[1]^2*x[3]^13 - 1/2*x[1]*x[2]*x[3]^10,
-x[1]^2*x[3]^3
] >;
s`ShimRationalPoints := {
[ 1, 0, 0 ],
[ -1, 0, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

