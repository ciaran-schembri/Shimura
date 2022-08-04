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

s`ShimLabel := "146.1-[1,2,73,146]";

s`ShimDiscriminant :=  146;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2, 73, 146 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, -82, -221, -214, 133, 360, -170, -676, -150, 676, -170, -360, 133, 214, -221, 82, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^18,
1/2*x[1]^3*x[3]^17 - 1/2*x[1]^2*x[3]^18 - 1/2*x[1]*x[3]^19,
1/4*x[1]^4*x[3]^16 - 1/2*x[1]^3*x[3]^17 - 1/4*x[1]^2*x[3]^18 + 1/2*x[1]*x[3]^19 + 1/4*x[3]^20
] >;
s`ShimRationalPoints := true;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

