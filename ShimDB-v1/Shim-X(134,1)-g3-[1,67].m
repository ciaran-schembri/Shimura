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

s`ShimLabel := "134.1-[1,67]";

s`ShimDiscriminant :=  134;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 67 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -32, 32, 13, -35, 20, 14, -13, -2, 2]), Polynomial([RationalField() | 0, 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, -8, 178, -138, -625, 940, 383, -1486, 383, 940, -625, -138, 178, -8, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[1]^2*x[3]^6 + 3/2*x[1]*x[3]^7 - 1/2*x[3]^8,
-1/16*x[1]^7*x[3]^25 + 7/16*x[1]^6*x[3]^26 - 9/8*x[1]^5*x[3]^27 + 23/16*x[1]^4*x[3]^28 - 9/8*x[1]^3*x[3]^29 + 7/16*x[1]^2*x[3]^30 + 1/16*x[1]*x[2]*x[3]^24 - 1/16*x[1]*x[3]^31 - 1/16*x[2]*x[3]^25,
1/2*x[1]^2*x[3]^6 - 1/2*x[1]*x[3]^7 + 1/2*x[3]^8
] >;
return s;

