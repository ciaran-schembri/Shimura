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

s`ShimLabel := "15.4-[1,4,5,20]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  4;
s`ShimAtkinLehner :=  [ 1, 4, 5, 20 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + Y*Z^2
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-80*x[1]^6 - 83*x[1]^4 - 26*x[1]^2 - x[2]^2 - 3,
-3*x[1]^2 - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-7/12*x[3]^3 - 1/3*x[3],
-1/4*x[2] - 5/24*x[3]^3 + 1/6*x[3],
x[3]^3
] >;
s`ShimRationalPoints := {
[ 0, 0, 1 ],
[ 0, -1, 1 ],
[ 0, 1, 0 ],
[ -1, 0, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

