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

s`ShimLabel := "14.5-[1,10]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 10 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
23*X^2 + 1168/7*X*Y + 13802/49*Y^2 - 36688/343*Y*Z - 16721/2401*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + 2/7*x[1]^3*x[3] + 92/49*x[1]^2*x[3]^2 + 13/49*x[1]*x[3]^3 + 169/196*x[3]^4,
x[1]^3*x[3] - 5/14*x[1]^2*x[3]^2 + 6/7*x[1]*x[3]^3 - 13/28*x[3]^4,
x[1]^2*x[3]^2 - x[1]*x[3]^3 + 1/4*x[3]^4,
-x[2]
] >;
s`ShimRationalPoints := {
[ -1/196, -1/28, -1/4, 1 ],
[ 1/196, 1/28, 1/4, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

