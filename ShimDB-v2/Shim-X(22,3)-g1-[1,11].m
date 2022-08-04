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

s`ShimLabel := "22.3-[1,11]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 11 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
27*X^2 + 200*Y^2 + 1584*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + 2*x[1]^2*x[3]^2 + x[3]^4,
-x[1]^3*x[3] - x[1]*x[3]^3,
x[1]^2*x[3]^2,
x[2]
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Not Locally Solvable";

s`ShimPointsEverywhereLocally := false;

return s;

