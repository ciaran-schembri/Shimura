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

s`ShimLabel := "87.1-[1,29]";

s`ShimDiscriminant :=  87;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 29 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -5, 14, 23, -81, -36, 93, 70, 18, 3]), Polynomial([RationalField() | 1, 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -2187, 0, -13446, 0, -29421, 0, -26548, 0, -7157, 0, 1178, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/4*x[1]^2*x[3]^6 - 1/4*x[3]^8,
-11/256*x[1]^8*x[3]^24 - 15/128*x[1]^6*x[3]^26 - 11/64*x[1]^4*x[3]^28 - 17/128*x[1]^2*x[3]^30 + 1/128*x[1]*x[2]*x[3]^25 - 9/256*x[3]^32,
1/2*x[1]^2*x[3]^6 + 1/2*x[3]^8
] >;
return s;

