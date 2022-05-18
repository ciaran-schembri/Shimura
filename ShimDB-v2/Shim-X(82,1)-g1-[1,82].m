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

s`ShimLabel := "82.1-[1,82]";

s`ShimDiscriminant :=  82;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 82 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
-16/9*X^2 + 60928/27*X*Y - 29345792/27*Y^2 + 57269518336/243*Y*Z - 14161246486528/729*Z^2 + T^2
]);

s`ShimRationalPoints := DirectProduct(FPGroup(FreeAbelianGroup(1)), FPGroup(Group("C2")));

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

