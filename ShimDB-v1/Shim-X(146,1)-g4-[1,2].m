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

s`ShimLabel := "146.1-[1,2]";

s`ShimDiscriminant :=  146;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -44, -56, -110, -38, -36, 43, 14, 26, -4, 1, -5]), Polynomial([RationalField() | 0, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, -82, -221, -214, 133, 360, -170, -676, -150, 676, -170, -360, 133, 214, -221, 82, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]*x[3]^9,
-1/16*x[1]^8*x[3]^42 + 3/16*x[1]^7*x[3]^43 - 1/4*x[1]^6*x[3]^44 - 1/16*x[1]^5*x[3]^45 + 1/4*x[1]^4*x[3]^46 + 3/16*x[1]^3*x[3]^47 + 1/16*x[1]^2*x[2]*x[3]^40 + 1/16*x[1]^2*x[3]^48 + 1/16*x[2]*x[3]^42,
1/2*x[1]^2*x[3]^8 - 1/2*x[1]*x[3]^9 - 1/2*x[3]^10
] >;
return s;

