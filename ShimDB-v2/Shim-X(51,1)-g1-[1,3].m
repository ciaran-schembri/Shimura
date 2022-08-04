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

s`ShimLabel := "51.1-[1,3]";

s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + Y^2*Z + 59*X*Z^2 + Y*Z^2 + 196*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, 0, 92, 0, -674, 0, -964, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-27*x[1]^4 - 94*x[1]^2*x[3]^2 - 39*x[3]^4,
-1/2*x[1]^4 - 3*x[1]^2*x[3]^2 + 17/2*x[2] - 9/2*x[3]^4,
x[1]^4 + 6*x[1]^2*x[3]^2 + 9*x[3]^4
] >;
s`ShimRationalPoints := {
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

