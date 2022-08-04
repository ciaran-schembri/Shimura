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

s`ShimLabel := "10.13-[1,2,13,26]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner :=  [ 1, 2, 13, 26 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X^2*Z + X*Y*Z + Y^2*Z + 67*X*Z^2 + Y*Z^2 + 441*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
5*x[1]^4 - 74*x[1]^2 - x[2]^2 + 325,
-2*x[1]^2 - x[3]^2 - 25
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-239/8*x[3]^3 - 8125/8*x[3],
-1625/8*x[1]*x[2] + 231/16*x[3]^3 + 8125/16*x[3],
x[3]^3
] >;
s`ShimRationalPoints := {
[ 43/4, -47/8, 1 ],
[ 27, -144, 1 ],
[ 0, 1, 0 ],
[ 27, 116, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

