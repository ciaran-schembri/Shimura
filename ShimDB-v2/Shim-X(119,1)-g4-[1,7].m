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

s`ShimLabel := "119.1-[1,7]";

s`ShimDiscriminant :=  119;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 7 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 4, -9, -12, 6, 18, -2, -17, -1, 5, 3, -3]), Polynomial([RationalField() | 1, 1, 1, 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -823543, 0, -2559466, 0, -3649275, 0, -2945912, 0, -1307614, 0, -255164, 0, 10114, 0, -3192, 0, -427, 0, 150, 0, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/4*x[1]^2*x[3]^8 + 3/4*x[3]^10,
-5/2048*x[1]^10*x[3]^40 - 23/2048*x[1]^8*x[3]^42 - 65/1024*x[1]^6*x[3]^44 - 159/1024*x[1]^4*x[3]^46 - 393/2048*x[1]^2*x[3]^48 + 1/2048*x[2]*x[3]^40 - 155/2048*x[3]^50,
1/4*x[1]^2*x[3]^8 - 1/4*x[3]^10
] >;
s`ShimRationalPoints := {};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Two Cover Descent";

s`ShimPointsEverywhereLocally := true;

return s;

