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

s`ShimLabel := "6.37-[1,74]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 74 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -148, 0, 3153, 0, -1721, 0, 351, 0, -16]), Polynomial([RationalField() | 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^6 + x[3]^8,
1/4*x[1]^7*x[3]^25 + 13/16*x[1]^5*x[3]^27 + 13/16*x[1]^3*x[3]^29 + 1/16*x[1]^2*x[2]*x[3]^24 + 1/4*x[1]*x[3]^31 - 1/16*x[2]*x[3]^26,
-1/2*x[1]*x[3]^7
] >;
return s;

