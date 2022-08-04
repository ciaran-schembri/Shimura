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

s`ShimLabel := "10.19-[1,2,95,190]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 2, 95, 190 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X^2*Z + X*Y*Z + Y^2*Z + 48*X*Z^2 + Y*Z^2 - 147*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-8*x[1]^6 + 57*x[1]^4 - 40*x[1]^2 - x[2]^2 + 16,
5*x[1]^2 - x[3]^2 - 32
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-2/5*x[3]^2 - 39/5,
x[2] + 1/5*x[3]^2 + 17/5,
1
] >;
s`ShimRationalPoints := "NA";

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "DirectProduct(FPGroup(FreeAbelianGroup(1)), FPGroup(Group(C1)))";

s`ShimPointsEverywhereLocally := true;

return s;

