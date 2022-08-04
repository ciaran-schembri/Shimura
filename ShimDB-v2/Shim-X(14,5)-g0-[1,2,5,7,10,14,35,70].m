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

s`ShimLabel := "14.5-[1,2,5,7,10,14,35,70]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 2, 5, 7, 10, 14, 35, 70 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^8 - 8/7*x[1]^7*x[3] + 128/49*x[1]^6*x[3]^2 - 8/49*x[1]^5*x[3]^3 + 130/49*x[1]^4*x[3]^4 + 8/49*x[1]^3*x[3]^5 + 128/49*x[1]^2*x[3]^6 + 8/7*x[1]*x[3]^7 + x[3]^8,
x[1]^7*x[3] + 13/14*x[1]^6*x[3]^2 - 5/7*x[1]^5*x[3]^3 + 20/7*x[1]^4*x[3]^4 + 5/7*x[1]^3*x[3]^5 + 13/14*x[1]^2*x[3]^6 - x[1]*x[3]^7,
x[1]^6*x[3]^2 + 3*x[1]^5*x[3]^3 + 1/4*x[1]^4*x[3]^4 - 3*x[1]^3*x[3]^5 + x[1]^2*x[3]^6
] >;
s`ShimRationalPoints := true;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

