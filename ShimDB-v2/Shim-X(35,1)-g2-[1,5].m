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

s`ShimLabel := "35.1-[1,5]";

s`ShimDiscriminant :=  35;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -4, 5, 1, 1, 1, -7]), Polynomial([RationalField() | 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -7, 0, -1380, 0, -554, 0, -100, 0, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/4*x[1]^2*x[3]^3 + 3/4*x[3]^5,
-1/32*x[1]^4*x[3]^11 - 3/16*x[1]^2*x[3]^13 - 1/32*x[1]*x[2]*x[3]^10 - 25/32*x[3]^15,
x[3]^5
] >;
s`ShimRationalPoints := {
[ 3, -50, 4 ],
[ 1, 0, 0 ],
[ -1, -1, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

