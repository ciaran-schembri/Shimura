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

s`ShimLabel := "14.5-[1,7,10,70]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 7, 10, 70 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 2731*X*Z^2 + Y*Z^2 + 55146*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-30*x[1]^6 + 2*x[1]^5*x[3] - 87*x[1]^4*x[3]^2 - 87*x[1]^2*x[3]^4 - 2*x[1]*x[3]^5 - 30*x[3]^6,
29/2*x[1]^6 - x[1]^5*x[3] + 42*x[1]^4*x[3]^2 + 1/2*x[1]^2*x[2] + 42*x[1]^2*x[3]^4 + 2*x[1]*x[2]*x[3] + x[1]*x[3]^5 - 1/2*x[2]*x[3]^2 + 29/2*x[3]^6,
x[1]^6 + 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 + x[3]^6
] >;
s`ShimRationalPoints := {
[ -121/4, 117/8, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

