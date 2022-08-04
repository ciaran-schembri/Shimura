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

s`ShimLabel := "87.1-[1,3,29,87]";

s`ShimDiscriminant :=  87;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3, 29, 87 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -2187, 0, -13446, 0, -29421, 0, -26548, 0, -7157, 0, 1178, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[3]^4,
x[1]^2*x[3]^2,
x[1]^4
] >;
s`ShimRationalPoints := true;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

