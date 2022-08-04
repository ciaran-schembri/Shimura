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

s`ShimLabel := "10.23-[1,115]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 115 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 320, 0, -552, 0, 361, 0, -117, 0, 21, 0, -2]), Polynomial([RationalField() | 0, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]^2*x[3]^8 - x[3]^10,
-5/16*x[1]^10*x[3]^40 - 7/16*x[1]^9*x[3]^41 - 7/8*x[1]^8*x[3]^42 - 17/16*x[1]^7*x[3]^43 - 9/16*x[1]^6*x[3]^44 - 5/4*x[1]^5*x[3]^45 + 9/16*x[1]^4*x[3]^46 - 17/16*x[1]^3*x[3]^47 + 7/8*x[1]^2*x[3]^48 - 7/16*x[1]*x[3]^49 - 1/16*x[2]*x[3]^40 + 5/16*x[3]^50,
1/2*x[1]^2*x[3]^8 + 1/2*x[1]*x[3]^9 - 1/2*x[3]^10
] >;
return s;

