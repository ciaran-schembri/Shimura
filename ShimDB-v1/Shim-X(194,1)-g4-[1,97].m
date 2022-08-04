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

s`ShimLabel := "194.1-[1,97]";

s`ShimDiscriminant :=  194;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 97 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -16, -24, -55, -47, -61, -43, -29, -19, -7, -3, -1]), Polynomial([RationalField() | 0, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 92, -286, 592, -921, 1016, -872, -460, 1545, -1752, 34, 1752, 1545, 460, -872, -1016, -921, -592, -286, -92, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/4*x[1]^2*x[3]^8 - 3/4*x[1]*x[3]^9 + 1/4*x[3]^10,
1/1024*x[1]^10*x[3]^40 + 7/1024*x[1]^9*x[3]^41 + 13/1024*x[1]^8*x[3]^42 - 3/512*x[1]^7*x[3]^43 - 47/1024*x[1]^6*x[3]^44 - 47/1024*x[1]^5*x[3]^45 + 47/1024*x[1]^4*x[3]^46 - 3/512*x[1]^3*x[3]^47 - 13/1024*x[1]^2*x[3]^48 + 7/1024*x[1]*x[3]^49 + 1/256*x[2]*x[3]^40 - 1/1024*x[3]^50,
-1/4*x[1]^2*x[3]^8 + 1/4*x[1]*x[3]^9 + 1/4*x[3]^10
] >;
return s;

