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

s`ShimLabel := "58.1-[1,58]";

s`ShimDiscriminant :=  58;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 58 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X^2*Z + X*Y*Z + Y^2*Z + X*Z^2 - Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1682, 0, -862, 0, -78, 0, -2]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/8*x[1]^2*x[3] - 11/8*x[3]^3,
1/16*x[1]^2*x[3] + 1/32*x[2] + 11/16*x[3]^3,
x[3]^3
] >;
s`ShimRationalPoints := "NA";

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "DirectProduct(FPGroup(FreeAbelianGroup(1)), FPGroup(Group(C1)))";

s`ShimPointsEverywhereLocally := true;

return s;

