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

s`ShimLabel := "159.1-[1,53]";

s`ShimDiscriminant :=  159;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 53 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -5, 73, -437, 1221, -1361, -286, 1063, 571, -483, -46, 25, 3]), Polynomial([RationalField() | 1, 0, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, 0, 134, 0, -447, 0, -32376, 0, 113578, 0, 1211556, 0, -6650118, 0, -8888824, 0, -4367079, 0, -1132218, 0, -177147]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/4*x[1]^2*x[3]^10 - 1/4*x[3]^12,
-1109/2048*x[1]^12*x[3]^60 + 197/2048*x[1]^10*x[3]^62 - 73/1024*x[1]^8*x[3]^64 + 21/1024*x[1]^6*x[3]^66 - 9/2048*x[1]^4*x[3]^68 + 1/2048*x[1]^2*x[3]^70 - 1/2048*x[1]*x[2]*x[3]^61,
x[1]^2*x[3]^10
] >;
return s;

