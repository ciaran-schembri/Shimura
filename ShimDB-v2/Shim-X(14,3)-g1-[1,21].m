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

s`ShimLabel := "14.3-[1,21]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 21 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
-81/49*X^2 + 26/49*Y^2 + 7/81*Z^2 + T^2
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-7*x[1]^4 + 22*x[1]^2 - x[2]^2 + 1,
-9*x[1]^2 - x[3]^2 - 2
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[3]^2,
9*x[1]*x[3],
-9*x[3]^2 - 18,
18/7*x[2]
] >;
s`ShimRationalPoints := {
[ -49/36, 7/4, -9/4, 1 ],
[ 7/9, 0, 0, 1 ],
[ 49/36, 7/4, 9/4, 1 ],
[ 49/36, -7/4, 9/4, 1 ],
[ -7/9, 0, 0, 1 ],
[ -49/36, -7/4, -9/4, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

