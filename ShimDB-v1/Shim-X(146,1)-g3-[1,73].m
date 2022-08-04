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

s`ShimLabel := "146.1-[1,73]";

s`ShimDiscriminant :=  146;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 73 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -11, -3, -11, 5, -1, 5, -1, 1, -1]), Polynomial([RationalField() | 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, -82, -221, -214, 133, 360, -170, -676, -150, 676, -170, -360, 133, 214, -221, 82, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]*x[3]^7,
-1/16*x[1]^7*x[3]^25 + 3/16*x[1]^6*x[3]^26 - 1/4*x[1]^5*x[3]^27 - 1/16*x[1]^4*x[3]^28 + 1/4*x[1]^3*x[3]^29 + 3/16*x[1]^2*x[3]^30 + 1/16*x[1]*x[3]^31 + 1/16*x[2]*x[3]^24,
1/2*x[1]^2*x[3]^6 - 1/2*x[1]*x[3]^7 - 1/2*x[3]^8
] >;
return s;

