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

s`ShimLabel := "26.1-[1,13]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 13 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 5*X*Z^2 + Y*Z^2 + 8*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -169, 0, -24, 0, 19, 0, -2]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[1]^2*x[3] + 3/2*x[3]^3,
1/4*x[1]^2*x[3] + 1/4*x[2] - 5/4*x[3]^3,
x[3]^3
] >;
s`ShimRationalPoints := {
[ 4, -9, 1 ],
[ 4, 4, 1 ],
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

