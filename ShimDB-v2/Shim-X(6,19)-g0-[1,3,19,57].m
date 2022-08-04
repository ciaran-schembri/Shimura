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

s`ShimLabel := "6.19-[1,3,19,57]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 3, 19, 57 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,19*X^2 + Y^2 - 210*X*T + 587*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 0, 210, 0, -625, 0, 210, 0, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + x[3]^4,
x[2],
x[1]^2*x[3]^2
] >;
s`ShimRationalPoints := false;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := false;

return s;

