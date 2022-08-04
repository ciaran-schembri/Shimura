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

s`ShimLabel := "10.23-[1,2]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -640, 0, 2212, 0, -3690, 0, 3670, 0, -2135, 0, 652, 0, -80]), Polynomial([RationalField() | 0, 0, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-x[1]^2*x[3]^10 - x[1]*x[3]^11 + x[3]^12,
-1/2*x[1]^12*x[3]^60 - 3/2*x[1]^11*x[3]^61 - 3/2*x[1]^10*x[3]^62 - 2*x[1]^9*x[3]^63 - 3/2*x[1]^8*x[3]^64 + 3/2*x[1]^7*x[3]^65 + 3/2*x[1]^5*x[3]^67 + 3/2*x[1]^4*x[3]^68 - 2*x[1]^3*x[3]^69 - 1/2*x[1]^2*x[2]*x[3]^60 + 3/2*x[1]^2*x[3]^70 + 2*x[1]*x[2]*x[3]^61 - 3/2*x[1]*x[3]^71 + 1/2*x[2]*x[3]^62 + 1/2*x[3]^72,
-x[1]^2*x[3]^10 - x[3]^12
] >;
return s;

