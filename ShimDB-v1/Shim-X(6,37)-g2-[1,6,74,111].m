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

s`ShimLabel := "6.37-[1,6,74,111]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 6, 74, 111 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 21, 15, -50, 40, 46, -33, 5]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/9*x[1]^4*x[3]^7 - 1/36*x[1]^2*x[3]^9 - 1/9*x[3]^11,
1/648*x[1]^10*x[3]^23 + 11/2592*x[1]^8*x[3]^25 + 7/1728*x[1]^6*x[3]^27 - 1/2592*x[1]^5*x[2]*x[3]^22 + 11/2592*x[1]^4*x[3]^29 + 1/648*x[1]^2*x[3]^31 + 1/2592*x[1]*x[2]*x[3]^26,
1/9*x[1]^4*x[3]^7 + 5/18*x[1]^2*x[3]^9 + 1/9*x[3]^11
] >;
return s;

