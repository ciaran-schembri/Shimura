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

s`ShimLabel := "10.11-[1,55]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 55 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 13, -41, 21, 67, -30, -18, 5, 2]), Polynomial([RationalField() | 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -512, 0, -560, 0, 120, 0, 277, 0, 30, 0, -35, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^5 + x[3]^7,
1/2*x[1]^6*x[3]^22 + 3/2*x[1]^4*x[3]^24 + 2*x[1]^2*x[3]^26 + 1/2*x[1]*x[2]*x[3]^21 + x[3]^28,
-x[3]^7
] >;
return s;

