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

s`ShimLabel := "6.31-[1,31]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 31 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -11, -69, -134, -96, -103, -96, -134, -69, -11]), Polynomial([RationalField() | 1, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/4*x[1]^2*x[3]^6 - 1/2*x[1]*x[3]^7 - 3/4*x[3]^8,
-3/512*x[1]^8*x[3]^24 - 1/128*x[1]^6*x[3]^26 + 15/256*x[1]^4*x[3]^28 + 1/512*x[1]^2*x[2]*x[3]^24 - 9/128*x[1]^2*x[3]^30 + 3/512*x[2]*x[3]^26 - 243/512*x[3]^32,
-1/4*x[1]^2*x[3]^6 - 1/2*x[1]*x[3]^7 + 3/4*x[3]^8
] >;
return s;

