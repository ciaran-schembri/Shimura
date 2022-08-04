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

s`ShimLabel := "6.31-[1,3]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -31, 118, -99, -29, 1, -3, -1]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
3/16*x[1]^2*x[3]^4 + 1/16*x[3]^6,
-13/4096*x[1]^6*x[3]^12 - 21/4096*x[1]^4*x[3]^14 + 33/4096*x[1]^2*x[3]^16 - 1/4096*x[2]*x[3]^12 - 63/4096*x[3]^18,
-1/16*x[1]^2*x[3]^4 + 5/16*x[3]^6
] >;
return s;

