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

s`ShimLabel := "14.5-[1,70]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 70 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -3, -16, -10, 41, -10, -16, -3]), Polynomial([RationalField() | 1, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]^2*x[3]^4 - 1/4*x[1]*x[3]^5 - 3/4*x[3]^6,
-13/64*x[1]^6*x[3]^12 + 15/64*x[1]^5*x[3]^13 - 3/16*x[1]^4*x[3]^14 + 19/64*x[1]^3*x[3]^15 - 1/32*x[1]^2*x[2]*x[3]^12 + 3/16*x[1]^2*x[3]^16 - 1/8*x[1]*x[2]*x[3]^13 + 15/64*x[1]*x[3]^17 + 1/32*x[2]*x[3]^14 + 13/64*x[3]^18,
3/4*x[1]^2*x[3]^4 - 1/4*x[1]*x[3]^5 + 1/4*x[3]^6
] >;
return s;

