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

s`ShimLabel := "87.1-[1,3]";

s`ShimDiscriminant :=  87;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -4, -16, 5, 16, -7, 0, -1]), Polynomial([RationalField() | 1, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -2187, 0, -13446, 0, -29421, 0, -26548, 0, -7157, 0, 1178, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-3/4*x[1]^2*x[3]^4 - 1/4*x[3]^6,
47/128*x[1]^6*x[3]^12 + 79/128*x[1]^4*x[3]^14 + 53/128*x[1]^2*x[3]^16 - 1/128*x[2]*x[3]^12 + 13/128*x[3]^18,
-1/2*x[1]^2*x[3]^4 - 1/2*x[3]^6
] >;
return s;

