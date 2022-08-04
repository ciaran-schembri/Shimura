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

s`ShimLabel := "6.17-[1,2]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
-1/153*X^2 - 574/2601*Y^2 - 17/9*Z^2 + T^2
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
17*x[1]^4 - 10*x[1]^2 - x[2]^2 + 9,
-3*x[1]^2 - x[3]^2 - 16
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[3]^2,
-x[3],
1,
1/17*x[2]
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Not Locally Solvable";

s`ShimPointsEverywhereLocally := false;

return s;

