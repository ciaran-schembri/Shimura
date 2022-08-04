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

s`ShimLabel := "22.5-[1,2,11,22]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 2, 11, 22 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z - 10*X*Z^2 + Y*Z^2 + 45*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, 0, -80, 0, -240, 0, -362, 0, -240, 0, -80, 0, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-2*x[1]^6 - 11*x[1]^4*x[3]^2 - 11*x[1]^2*x[3]^4 - 2*x[3]^6,
1/2*x[1]^6 + 4*x[1]^4*x[3]^2 + 4*x[1]^2*x[3]^4 - 5/2*x[2] + 1/2*x[3]^6,
x[1]^6 + 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 + x[3]^6
] >;
s`ShimRationalPoints := {
[ 13, -57, 1 ],
[ 3, 3, 1 ],
[ 3, -7, 1 ],
[ 0, 1, 0 ],
[ 13, 43, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

