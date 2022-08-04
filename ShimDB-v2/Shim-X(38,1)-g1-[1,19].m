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

s`ShimLabel := "38.1-[1,19]";

s`ShimDiscriminant :=  38;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 19 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - 9*X*Z^2 + Y*Z^2 - 90*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 0, -82, 0, -59, 0, -16]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-4*x[1]^2*x[3] - 5*x[3]^3,
2*x[1]^2*x[3] + 2*x[2] + 2*x[3]^3,
x[3]^3
] >;
s`ShimRationalPoints := {
[ 0, 9, 1 ],
[ 0, -10, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

