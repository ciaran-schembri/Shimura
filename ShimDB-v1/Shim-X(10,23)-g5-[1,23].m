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

s`ShimLabel := "10.23-[1,23]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 23 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -11, -29, 0, 60, 3, -94, -62, 185, 451, 490, 318, 120, 20]), Polynomial([RationalField() | 1, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/5*x[1]^2*x[3]^10 + 2/5*x[1]*x[3]^11,
-3/31250*x[1]^12*x[3]^60 + 6/15625*x[1]^11*x[3]^61 - 4/3125*x[1]^10*x[3]^62 + 32/15625*x[1]^9*x[3]^63 - 51/15625*x[1]^8*x[3]^64 + 48/15625*x[1]^7*x[3]^65 - 52/15625*x[1]^6*x[3]^66 + 24/15625*x[1]^5*x[3]^67 - 24/15625*x[1]^4*x[3]^68 + 2/15625*x[1]^3*x[3]^69 + 1/31250*x[1]^2*x[2]*x[3]^60 - 1/3125*x[1]^2*x[3]^70 + 1/31250*x[1]*x[2]*x[3]^61 - 1/31250*x[2]*x[3]^62 - 1/31250*x[3]^72,
1/5*x[1]^2*x[3]^10 + 1/5*x[3]^12
] >;
return s;

