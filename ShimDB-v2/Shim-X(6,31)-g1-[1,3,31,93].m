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

s`ShimLabel := "6.31-[1,3,31,93]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 3, 31, 93 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 17*X*Z^2 + Y*Z^2 + 28*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-7*x[1]^6 + 65*x[1]^4*x[3]^2 + 195*x[1]^2*x[3]^4 - 189*x[3]^6,
3*x[1]^6 - 37*x[1]^4*x[3]^2 - 111*x[1]^2*x[3]^4 + x[2] + 81*x[3]^6,
x[1]^6 + 9*x[1]^4*x[3]^2 + 27*x[1]^2*x[3]^4 + 27*x[3]^6
] >;
s`ShimRationalPoints := {
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

