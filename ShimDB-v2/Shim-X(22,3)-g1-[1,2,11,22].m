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

s`ShimLabel := "22.3-[1,2,11,22]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 2, 11, 22 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - 115*X*Z^2 - 561*Z^3
]);

s`ShimRationalPoints := {
[ -17/4, 17/8, 1 ],
[ 16, 73, 1 ],
[ 4, -35, 1 ],
[ -2, -17, 1 ],
[ 16, -89, 1 ],
[ -2, 19, 1 ],
[ 4, 31, 1 ],
[ 0, 1, 0 ],
[ 70, -629, 1 ],
[ 70, 559, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;

