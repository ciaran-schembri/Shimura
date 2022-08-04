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

s`ShimLabel := "6.19-[1,6,38,57]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 6, 38, 57 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 85*X*Z^2 + 473*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 0, 210, 0, -625, 0, 210, 0, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-19/4*x[1]^5*x[3] + 81/4*x[1]^3*x[3]^3 - 19/4*x[1]*x[3]^5,
19/8*x[1]^5*x[3] - 81/8*x[1]^3*x[3]^3 + 19/8*x[1]^2*x[2] + 19/8*x[1]*x[3]^5 - 19/8*x[2]*x[3]^2,
x[1]^3*x[3]^3
] >;
s`ShimRationalPoints := {
[ 43/4, -43/8, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

