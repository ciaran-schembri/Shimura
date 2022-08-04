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

s`ShimLabel := "14.5-[1,5,7,35]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 5, 7, 35 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 11*X*Z^2 + Y*Z^2 - 12*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
29/16*x[1]^6 - 1/8*x[1]^5*x[3] + 21/4*x[1]^4*x[3]^2 + 21/4*x[1]^2*x[3]^4 + 1/8*x[1]*x[3]^5 + 29/16*x[3]^6,
-45/32*x[1]^6 + 1/16*x[1]^5*x[3] - 33/8*x[1]^4*x[3]^2 - 1/64*x[1]^2*x[2] - 33/8*x[1]^2*x[3]^4 + 1/64*x[1]*x[2]*x[3] - 1/16*x[1]*x[3]^5 + 1/64*x[2]*x[3]^2 - 45/32*x[3]^6,
x[1]^6 + 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 + x[3]^6
] >;
s`ShimRationalPoints := {
[ 2, -1, 1 ],
[ 2, -2, 1 ],
[ 0, -4, 1 ],
[ 0, 3, 1 ],
[ 0, 1, 0 ],
[ 7/4, -11/8, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

