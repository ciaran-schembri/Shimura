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

s`ShimLabel := "22.3-[1,6]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -11, 18, -41, 18, -11]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 - 1/4*x[3]^6,
-1/64*x[1]^2*x[2]*x[3]^12 + 1/64*x[2]*x[3]^14,
-1/4*x[1]^2*x[3]^4 - 1/2*x[1]*x[3]^5 - 1/4*x[3]^6
] >;
return s;

