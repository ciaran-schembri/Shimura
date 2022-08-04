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

s`ShimLabel := "6.11-[1,6,11,66]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 6, 11, 66 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,845*Y^2 - 7605*X*T + 5616*Y*T - 1620*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 166, -439, 166, 612, -166, -439, -166, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 - 4/5*x[1]^3*x[3] + 6/5*x[1]^2*x[3]^2 - 4/5*x[1]*x[3]^3 + 1/5*x[3]^4,
x[1]^3*x[3] + 3/13*x[1]^2*x[3]^2 - 7/13*x[1]*x[3]^3 + 3/13*x[3]^4,
1/9*x[1]^2*x[3]^2 + 2/9*x[1]*x[3]^3 + 1/9*x[3]^4
] >;
s`ShimRationalPoints := true;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

