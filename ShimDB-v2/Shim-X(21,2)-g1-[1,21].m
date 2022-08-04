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

s`ShimLabel := "21.2-[1,21]";

s`ShimDiscriminant :=  21;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 21 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 4*X*Z^2 + Y*Z^2 - 5*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-9*x[1]^6 - 89*x[1]^4 - 179*x[1]^2 - x[2]^2 + 21,
-x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
8/3*x[1]*x[3]^3 + 224/27*x[1]*x[3] + x[3]^5 + 16/3*x[3]^3 + 560/81*x[3],
4/9*x[1]*x[2] - 4/3*x[1]*x[3]^3 - 112/27*x[1]*x[3] + 2/3*x[2]*x[3]^2 + 52/27*x[2] - x[3]^5 - 52/9*x[3]^3 - 224/27*x[3],
x[3]^5 + 56/9*x[3]^3 + 784/81*x[3]
] >;
s`ShimRationalPoints := {
[ 5, 9, 1 ],
[ 5, -15, 1 ],
[ -1, 3, 1 ],
[ -3, 1, 1 ],
[ 1, -3, 1 ],
[ -1, -3, 1 ],
[ 0, 1, 0 ],
[ 1, 1, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

