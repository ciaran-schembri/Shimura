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

s`ShimLabel := "6.37-[1,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -972, 0, -2411, 0, -2245, 0, -929, 0, -144]), Polynomial([RationalField() | 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/3*x[1]^2*x[3]^6 - 1/3*x[3]^8,
1/108*x[1]^7*x[3]^25 - 1/144*x[1]^5*x[3]^27 + 1/144*x[1]^3*x[3]^29 + 1/432*x[1]^2*x[2]*x[3]^24 - 1/108*x[1]*x[3]^31 + 1/432*x[2]*x[3]^26,
-1/2*x[1]*x[3]^7
] >;
return s;

