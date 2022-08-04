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

s`ShimLabel := "10.11-[1,22]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 22 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 1, 0, -2, -7, -2, 0, 1]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -512, 0, -560, 0, 120, 0, 277, 0, 30, 0, -35, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 - x[3]^6,
1/8*x[1]^6*x[3]^12 + 9/8*x[1]^4*x[3]^14 + 9/4*x[1]^2*x[3]^16 - 1/8*x[2]*x[3]^12 + x[3]^18,
-1/2*x[1]^2*x[3]^4 - 1/2*x[1]*x[3]^5 - x[3]^6
] >;
return s;

