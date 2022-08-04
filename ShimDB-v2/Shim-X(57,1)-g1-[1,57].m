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

s`ShimLabel := "57.1-[1,57]";

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 57 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X^2*Z + Y^2*Z + 2*X*Z^2 + Y*Z^2 - 2*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^4 + 36*x[1]^3 + 62*x[1]^2 + 20*x[1] - x[2]^2 + 1,
-4*x[1]^2 + 2*x[1] - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-32/135*x[2]^2*x[3]^2 - 608/1215*x[2]^2 + 17/15*x[3]^6 - 365/54*x[3]^4 - 28348/1215*x[3]^2 - 6859/810,
-112/405*x[2]^3 + 37/45*x[2]*x[3]^4 - 3854/405*x[2]*x[3]^2 - 1/2*x[3]^6 + 19/180*x[3]^4 + 2888/405*x[3]^2 + 48013/4860,
x[3]^6 - 19/90*x[3]^4 - 5776/405*x[3]^2 - 48013/2430
] >;
s`ShimRationalPoints := "NA";

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "DirectProduct(FPGroup(FreeAbelianGroup(1)), FPGroup(Group(C1)))";

s`ShimPointsEverywhereLocally := true;

return s;

