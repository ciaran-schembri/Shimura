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

s`ShimLabel := "35.1-[1,7]";

s`ShimDiscriminant :=  35;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 7 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + Y^2*Z - 9*X*Z^2 + Y*Z^2 - Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -7, 0, -1380, 0, -554, 0, -100, 0, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-3*x[1]^4 - 22*x[1]^2*x[3]^2 - 7*x[3]^4,
-1/2*x[1]^4 - 7*x[1]^2*x[3]^2 + 5/2*x[2] - 49/2*x[3]^4,
x[1]^4 + 14*x[1]^2*x[3]^2 + 49*x[3]^4
] >;
s`ShimRationalPoints := {
[ 1, 3, 1 ],
[ 1, -4, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

