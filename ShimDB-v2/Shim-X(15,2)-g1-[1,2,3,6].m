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

s`ShimLabel := "15.2-[1,2,3,6]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 334*X*Z^2 + Y*Z^2 + 2368*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-9*x[1]^6 - 64*x[1]^4*x[3]^2 - 128*x[1]^2*x[3]^4 - 72*x[3]^6,
4*x[1]^6 + 29*x[1]^4*x[3]^2 - 5*x[1]^2*x[2] + 58*x[1]^2*x[3]^4 + 10*x[2]*x[3]^2 + 32*x[3]^6,
x[1]^6 + 6*x[1]^4*x[3]^2 + 12*x[1]^2*x[3]^4 + 8*x[3]^6
] >;
s`ShimRationalPoints := {
[ 21, -11, 1 ],
[ -11, 5, 1 ],
[ -41/4, 37/8, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

