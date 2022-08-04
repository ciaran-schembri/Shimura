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

s`ShimLabel := "194.1-[1,2]";

s`ShimDiscriminant :=  194;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -76, 272, -794, 1426, -2188, 2432, -2367, 1726, -1135, 560, -248, 78, -10]), Polynomial([RationalField() | 0, 0, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 92, -286, 592, -921, 1016, -872, -460, 1545, -1752, 34, 1752, 1545, 460, -872, -1016, -921, -592, -286, -92, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]*x[3]^11,
-1/32*x[1]^10*x[3]^62 - 3/16*x[1]^9*x[3]^63 - 3/8*x[1]^8*x[3]^64 - 1/4*x[1]^7*x[3]^65 + 11/32*x[1]^6*x[3]^66 + 1/4*x[1]^5*x[3]^67 - 3/8*x[1]^4*x[3]^68 + 3/16*x[1]^3*x[3]^69 + 1/32*x[1]^2*x[2]*x[3]^60 - 1/32*x[1]^2*x[3]^70 + 1/32*x[2]*x[3]^62,
-1/2*x[1]^2*x[3]^10 - 1/2*x[1]*x[3]^11 + 1/2*x[3]^12
] >;
return s;

