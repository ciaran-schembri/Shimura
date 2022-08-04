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

s`ShimLabel := "6.29-[1,2,3,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 6511*X*Z^2 + 203353*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, 13008, 0, -12264, 0, 4597, 0, -3066, 0, 813, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-3961/36*x[1]^6 + 623/36*x[1]^4*x[3]^2 + 623/18*x[1]^2*x[3]^4 - 7922/9*x[3]^6,
3961/72*x[1]^6 - 623/72*x[1]^4*x[3]^2 - 623/36*x[1]^2*x[3]^4 + 24389/216*x[2] + 3961/9*x[3]^6,
x[1]^6 + 6*x[1]^4*x[3]^2 + 12*x[1]^2*x[3]^4 + 8*x[3]^6
] >;
s`ShimRationalPoints := {
[ 0, 1, 0 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

