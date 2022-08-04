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

s`ShimLabel := "10.23-[1,2,23,46]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 2, 23, 46 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -80, 92, 97, -25, -119, -87, 72, -11]), Polynomial([RationalField() | 0, 0, 1, 0, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/2*x[1]^4*x[3]^12 - x[1]^2*x[3]^14 - 1/2*x[3]^16,
-1/32*x[1]^16*x[3]^48 - 3/8*x[1]^14*x[3]^50 + 3/8*x[1]^13*x[3]^51 - 45/32*x[1]^12*x[3]^52 + 9/8*x[1]^11*x[3]^53 - 11/4*x[1]^10*x[3]^54 + 3/4*x[1]^9*x[3]^55 - 27/8*x[1]^8*x[3]^56 - 3/4*x[1]^7*x[3]^57 + 1/32*x[1]^6*x[2]*x[3]^48 - 11/4*x[1]^6*x[3]^58 - 3/32*x[1]^5*x[2]*x[3]^49 - 9/8*x[1]^5*x[3]^59 - 5/32*x[1]^4*x[2]*x[3]^50 - 45/32*x[1]^4*x[3]^60 - 3/8*x[1]^3*x[3]^61 - 5/32*x[1]^2*x[2]*x[3]^52 - 3/8*x[1]^2*x[3]^62 + 3/32*x[1]*x[2]*x[3]^53 + 1/32*x[2]*x[3]^54 - 1/32*x[3]^64,
-x[1]^3*x[3]^13 + 3/2*x[1]^2*x[3]^14 + x[1]*x[3]^15
] >;
return s;

