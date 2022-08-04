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

s`ShimLabel := "14.3-[1,3,7,21]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 3, 7, 21 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 36*X*Z^2 + Y*Z^2 + 70*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-7*x[1]^4 + 22*x[1]^2 - x[2]^2 + 1,
-9*x[1]^2 - x[3]^2 - 2
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
131/18*x[3]^3 + 343/18*x[3],
-343/4*x[1]*x[2] - 149/36*x[3]^3 - 343/36*x[3],
x[3]^3
] >;
s`ShimRationalPoints := {
[ 10, 19, 1 ],
[ 10, -30, 1 ],
[ -4, 5, 1 ],
[ 0, 1, 0 ],
[ -9/4, 5/8, 1 ],
[ -4, -2, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

