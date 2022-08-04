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

s`ShimLabel := "111.1-[1,3,37,111]";

s`ShimDiscriminant :=  111;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3, 37, 111 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, -44, 16, -2, -150, 94, 297, -170, -331, 170, 297, -94, -150, 2, 16, 44, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/9*x[1]^4*x[3]^16 - 4/9*x[1]^3*x[3]^17 + 2/9*x[1]^2*x[3]^18 + 4/9*x[1]*x[3]^19 + 1/9*x[3]^20,
-1/9*x[1]^4*x[3]^16 + 1/9*x[1]^3*x[3]^17 + 4/9*x[1]^2*x[3]^18 - 1/9*x[1]*x[3]^19 - 1/9*x[3]^20,
1/9*x[1]^4*x[3]^16 + 2/9*x[1]^3*x[3]^17 - 1/9*x[1]^2*x[3]^18 - 2/9*x[1]*x[3]^19 + 1/9*x[3]^20
] >;
s`ShimRationalPoints := true;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

