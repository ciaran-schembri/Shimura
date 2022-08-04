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

s`ShimLabel := "86.1-[1,43]";

s`ShimDiscriminant :=  86;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 43 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -11, -7, 20, 6, -11, -2, 2]), Polynomial([RationalField() | 0, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, 0, -740, 0, -1506, 0, -756, 0, 245, 0, -16]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]^2*x[3]^4 + 1/4*x[3]^6,
3/512*x[1]^6*x[3]^12 + 7/512*x[1]^4*x[3]^14 - 7/512*x[1]^2*x[3]^16 - 1/128*x[2]*x[3]^13 - 3/512*x[3]^18,
-1/8*x[1]^2*x[3]^4 - 3/8*x[3]^6
] >;
return s;

