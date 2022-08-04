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

s`ShimLabel := "111.1-[1,3]";

s`ShimDiscriminant :=  111;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -6, 33, -60, 57, -73, 61, -42, 28, -17, 4, -4]), Polynomial([RationalField() | 0, 1, 1, 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, -44, 16, -2, -150, 94, 297, -170, -331, 170, 297, -94, -150, 2, 16, 44, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/3*x[1]^2*x[3]^8 - 2/3*x[1]*x[3]^9 - 1/3*x[3]^10,
-1/486*x[1]^10*x[3]^40 + 2/243*x[1]^9*x[3]^41 - 23/486*x[1]^8*x[3]^42 + 55/486*x[1]^7*x[3]^43 - 1/162*x[1]^6*x[3]^44 - 28/243*x[1]^5*x[3]^45 + 1/162*x[1]^4*x[3]^46 + 55/486*x[1]^3*x[3]^47 + 1/54*x[1]^2*x[2]*x[3]^40 + 23/486*x[1]^2*x[3]^48 + 2/243*x[1]*x[3]^49 + 1/54*x[2]*x[3]^42 + 1/486*x[3]^50,
-1/3*x[1]^2*x[3]^8 - 1/3*x[1]*x[3]^9 + 1/3*x[3]^10
] >;
return s;

