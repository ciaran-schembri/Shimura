Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(),
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimRationalPoints,
 ShimPointsProvedCorrect,
 ShimPointsNotes,
 ShimPointsEverywhereLocally
 >;
s := rec< RF | >;

s`ShimLabel := "14.3-[1,42]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 42 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
-81/49*X^2 - 22/49*Y^2 + 1/567*Z^2 + T^2
]);

s`ShimRationalPoints := {
[ -7/36, -7/4, -63/4, 1 ],
[ 7/36, 7/4, 63/4, 1 ],
[ 7/9, 0, 0, 1 ],
[ 7/36, -7/4, 63/4, 1 ],
[ -7/9, 0, 0, 1 ],
[ -7/36, 7/4, -63/4, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

