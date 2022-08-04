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

s`ShimLabel := "6.31-[1,2]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -972, 0, 1198, 0, -523, 0, 94, 0, -6]), Polynomial([RationalField() | 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]*x[3]^7,
-1/1024*x[1]^7*x[3]^25 - 73/1024*x[1]^5*x[3]^27 - 219/1024*x[1]^3*x[3]^29 - 1/2048*x[1]^2*x[2]*x[3]^24 - 27/1024*x[1]*x[3]^31 + 3/2048*x[2]*x[3]^26,
-1/8*x[1]^2*x[3]^6 - 3/8*x[3]^8
] >;
return s;

