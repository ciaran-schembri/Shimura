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

s`ShimLabel := "6.11-[1,11]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 11 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -5, 89, -570, 1334, -570, 89, -5]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 166, -439, 166, 612, -166, -439, -166, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]*x[3]^5 + x[3]^6,
1/2*x[1]^6*x[3]^12 - 3/2*x[1]^5*x[3]^13 + 3/2*x[1]^4*x[3]^14 - x[1]^3*x[3]^15 - 1/2*x[1]^2*x[2]*x[3]^12 - 3/2*x[1]^2*x[3]^16 - x[1]*x[2]*x[3]^13 - 3/2*x[1]*x[3]^17 + 1/2*x[2]*x[3]^14 - 1/2*x[3]^18,
-x[1]^2*x[3]^4 + x[1]*x[3]^5
] >;
return s;

