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

s`ShimLabel := "22.3-[1,2]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -5, -11, -25, -27, -25, -11, -5]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/8*x[1]^2*x[3]^4 + 1/2*x[1]*x[3]^5 + 1/8*x[3]^6,
1/512*x[1]^6*x[3]^12 - 19/512*x[1]^4*x[3]^14 - 1/256*x[1]^2*x[2]*x[3]^12 + 19/512*x[1]^2*x[3]^16 - 1/256*x[2]*x[3]^14 - 1/512*x[3]^18,
-1/8*x[1]^2*x[3]^4 - 1/2*x[1]*x[3]^5 + 1/8*x[3]^6
] >;
return s;

