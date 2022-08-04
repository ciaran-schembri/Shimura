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

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
16*x[1]^4 - 32*x[1]^3 + 1032*x[1]^2 + 1576*x[1] - x[2]^2 + 1549,
-3*x[1]^2 - x[3]^2 - 6
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[3]^6 + 45249/8*x[3]^4 + 2154245841/256*x[3]^2 + 1191668502015/1024,
27/1024*x[2]^2*x[3]^2 + 1188513/16384*x[2]^2 - 3/64*x[3]^6 - 114633/1024*x[3]^4 + 24644169/512*x[3]^2 + 59498149293/16384,
29403/65536*x[2]^2 - 3375/4096*x[3]^4 + 3488751/16384*x[3]^2 + 92626011/8192,
-1089/64*x[2]^3 + 125/4*x[2]*x[3]^4 - 129213/16*x[2]*x[3]^2 - 3430593/8*x[2]
] >;
s`ShimRationalPoints := "NA";

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "DirectProduct(FPGroup(FreeAbelianGroup(1)), FPGroup(Group(C2)))";

s`ShimPointsEverywhereLocally := true;

return s;

