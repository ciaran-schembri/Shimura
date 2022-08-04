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

s`ShimLabel := "10.19-[1,2,19,38]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 2, 19, 38 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,X^2 - 1/32*Y*T); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-8*x[1]^6 + 57*x[1]^4 - 40*x[1]^2 - x[2]^2 + 16,
5*x[1]^2 - x[3]^2 - 32
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[3],
x[3]^2,
32
] >;
s`ShimRationalPoints := true;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

