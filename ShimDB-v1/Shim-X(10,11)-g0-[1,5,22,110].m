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

s`ShimLabel := "10.11-[1,5,22,110]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 5, 22, 110 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,X^2 - 8*Y^2 - 1/2*X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -512, 0, -560, 0, 120, 0, 277, 0, 30, 0, -35, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^6*x[3]^2 + x[1]^4*x[3]^4 + 4*x[1]^2*x[3]^6,
-1/4*x[1]^7*x[3] - 3/4*x[1]^5*x[3]^3 - 3/2*x[1]^3*x[3]^5 - 2*x[1]*x[3]^7,
-x[1]^8 - 3*x[1]^6*x[3]^2 - 10*x[1]^4*x[3]^4 - 12*x[1]^2*x[3]^6 - 16*x[3]^8
] >;
return s;

