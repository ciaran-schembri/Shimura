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

s`ShimLabel := "159.1-[1,3,53,159]";

s`ShimDiscriminant :=  159;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3, 53, 159 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, 0, 134, 0, -447, 0, -32376, 0, 113578, 0, 1211556, 0, -6650118, 0, -8888824, 0, -4367079, 0, -1132218, 0, -177147]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
49/144*x[1]^4*x[3]^16 + 7/72*x[1]^2*x[3]^18 + 1/144*x[3]^20,
35/144*x[1]^4*x[3]^16 - 1/72*x[1]^2*x[3]^18 - 1/144*x[3]^20,
25/144*x[1]^4*x[3]^16 - 5/72*x[1]^2*x[3]^18 + 1/144*x[3]^20
] >;
s`ShimRationalPoints := true;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := true;

return s;

