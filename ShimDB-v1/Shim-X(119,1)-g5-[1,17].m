Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations
>;
s := rec< RF | >;

s`ShimLabel := "119.1-[1,17]";

s`ShimDiscriminant :=  119;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 17 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -13, -34, 21, 50, -55, -47, 64, 31, -33, 0, 20, 2, -3]), Polynomial([RationalField() | 1, 0, 0, 1, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -823543, 0, -2559466, 0, -3649275, 0, -2945912, 0, -1307614, 0, -255164, 0, 10114, 0, -3192, 0, -427, 0, 150, 0, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/4*x[1]^2*x[3]^10 + 3/4*x[3]^12,
-1/4096*x[1]^12*x[3]^60 - 1/512*x[1]^10*x[3]^62 - 89/4096*x[1]^8*x[3]^64 - 35/512*x[1]^6*x[3]^66 - 579/4096*x[1]^4*x[3]^68 - 21/128*x[1]^2*x[3]^70 - 1/2048*x[1]*x[2]*x[3]^61 - 419/4096*x[3]^72,
-1/4*x[1]^2*x[3]^10 + 1/4*x[3]^12
] >;
return s;

