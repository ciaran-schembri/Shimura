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

s`ShimLabel := "6.29-[1,3]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -144, 0, -117, 0, 41, 0, 21, 0, -6]), Polynomial([RationalField() | 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, 13008, 0, -12264, 0, 4597, 0, -3066, 0, 813, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]*x[3]^7,
-1/54*x[1]^7*x[3]^25 - 1/18*x[1]^5*x[3]^27 + 1/9*x[1]^3*x[3]^29 + 1/54*x[1]^2*x[2]*x[3]^24 + 4/27*x[1]*x[3]^31 + 1/27*x[2]*x[3]^26,
-1/3*x[1]^2*x[3]^6 + 2/3*x[3]^8
] >;
return s;

