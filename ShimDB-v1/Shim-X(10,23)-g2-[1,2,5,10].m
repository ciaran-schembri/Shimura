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

s`ShimLabel := "10.23-[1,2,5,10]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 2, 5, 10 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -120, -620, -1094, -57, 333, 73, -43]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/2*x[1]^4*x[3]^8 - x[1]^3*x[3]^9 + 5/2*x[1]^2*x[3]^10 + x[1]*x[3]^11 + 1/2*x[3]^12,
-1/8*x[1]^2*x[2]*x[3]^24 + 1/2*x[1]*x[2]*x[3]^25 + 1/8*x[2]*x[3]^26,
x[1]^3*x[3]^9 - 3/2*x[1]^2*x[3]^10 - x[1]*x[3]^11
] >;
return s;

