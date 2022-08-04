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

s`ShimLabel := "10.23-[1,2,5,10,23,46,115,230]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 2, 5, 10, 23, 46, 115, 230 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -43, -318, -1071, -3014, -10540, -28266, -72217, -81478, -62765, 68732, 18840, -68732, -62765, 81478, -72217, 28266, -10540, 3014, -1071, 318, -43]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/4*x[1]^8*x[3]^24 + x[1]^6*x[3]^26 + 3/2*x[1]^4*x[3]^28 + x[1]^2*x[3]^30 + 1/4*x[3]^32,
1/2*x[1]^7*x[3]^25 - 3/4*x[1]^6*x[3]^26 + 1/2*x[1]^5*x[3]^27 - 3/2*x[1]^4*x[3]^28 - 1/2*x[1]^3*x[3]^29 - 3/4*x[1]^2*x[3]^30 - 1/2*x[1]*x[3]^31,
x[1]^6*x[3]^26 - 3*x[1]^5*x[3]^27 + 1/4*x[1]^4*x[3]^28 + 3*x[1]^3*x[3]^29 + x[1]^2*x[3]^30
] >;
return s;

