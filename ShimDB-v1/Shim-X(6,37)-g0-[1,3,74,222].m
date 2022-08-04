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

s`ShimLabel := "6.37-[1,3,74,222]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 3, 74, 222 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,X^2 - 4*Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^6*x[3]^2 + x[1]^4*x[3]^4 + x[1]^2*x[3]^6,
-1/2*x[1]^7*x[3] - x[1]^5*x[3]^3 - x[1]^3*x[3]^5 - 1/2*x[1]*x[3]^7,
-x[1]^8 - 2*x[1]^6*x[3]^2 - 3*x[1]^4*x[3]^4 - 2*x[1]^2*x[3]^6 - x[3]^8
] >;
return s;

