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

s`ShimLabel := "6.29-[1,87]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 87 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 13, 5, -24, 48, -17, -72, 34, 24, -12]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, 13008, 0, -12264, 0, 4597, 0, -3066, 0, 813, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/3*x[1]^2*x[3]^6 + 1/3*x[3]^8,
-1/81*x[1]^8*x[3]^24 + 7/162*x[1]^6*x[3]^26 - 1/54*x[1]^4*x[3]^28 - 4/81*x[1]^2*x[3]^30 + 1/54*x[1]*x[2]*x[3]^25 + 2/81*x[3]^32,
1/3*x[1]^2*x[3]^6 - 2/3*x[3]^8
] >;
return s;

