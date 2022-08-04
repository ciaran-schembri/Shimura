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

s`ShimLabel := "10.11-[1,5,11,55]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 5, 11, 55 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -10, -43, -117, 31, -2]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -512, 0, -560, 0, 120, 0, 277, 0, 30, 0, -35, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4*x[3]^7 + 4*x[1]^2*x[3]^9 + 4*x[3]^11,
-1/2*x[1]^10*x[3]^23 - 9/2*x[1]^8*x[3]^25 - 14*x[1]^6*x[3]^27 - 1/2*x[1]^5*x[2]*x[3]^22 - 18*x[1]^4*x[3]^29 - 8*x[1]^2*x[3]^31 + 2*x[1]*x[2]*x[3]^26,
x[1]^2*x[3]^9
] >;
return s;

