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

s`ShimLabel := "21.2-[1,3,14,42]";

s`ShimDiscriminant :=  21;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 3, 14, 42 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 4*X*Z^2 + Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-9*x[1]^6 - 89*x[1]^4 - 179*x[1]^2 - x[2]^2 + 21,
-x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[3]^4 - 7*x[3]^2,
7/4*x[2] + 1/8*x[3]^4 + 7/2*x[3]^2,
x[3]^4
] >;
s`ShimRationalPoints := {
[ -1, -1, 1 ],
[ 5, 8, 1 ],
[ 5, -13, 1 ],
[ -1, 2, 1 ],
[ 0, 1, 0 ],
[ -2, 1, 1 ],
[ 2, -1, 1 ],
[ -1/4, 1/8, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

