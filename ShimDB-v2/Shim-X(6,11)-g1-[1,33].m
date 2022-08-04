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

s`ShimLabel := "6.11-[1,33]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 33 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
19*X^2 + 982/5*X*Y + 18661/25*Y^2 + 154218/125*Y*Z + 468219/625*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 166, -439, 166, 612, -166, -439, -166, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 - 4/5*x[1]^3*x[3] + 74/25*x[1]^2*x[3]^2 - 28/25*x[1]*x[3]^3 + 49/25*x[3]^4,
x[1]^3*x[3] - 7/5*x[1]^2*x[3]^2 + 9/5*x[1]*x[3]^3 - 7/5*x[3]^4,
x[1]^2*x[3]^2 - 2*x[1]*x[3]^3 + x[3]^4,
-x[2]
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Not Locally Solvable";

s`ShimPointsEverywhereLocally := false;

return s;

