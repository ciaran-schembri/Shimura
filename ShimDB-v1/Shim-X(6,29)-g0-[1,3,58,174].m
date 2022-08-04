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

s`ShimLabel := "6.29-[1,3,58,174]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 3, 58, 174 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,X^2 + 8*Y^2 + 1/2*X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, 13008, 0, -12264, 0, 4597, 0, -3066, 0, 813, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^6*x[3]^2 + x[1]^4*x[3]^4 + 4*x[1]^2*x[3]^6,
1/4*x[1]^7*x[3] - 1/4*x[1]^5*x[3]^3 + 1/2*x[1]^3*x[3]^5 - 2*x[1]*x[3]^7,
-x[1]^8 + x[1]^6*x[3]^2 - 6*x[1]^4*x[3]^4 + 4*x[1]^2*x[3]^6 - 16*x[3]^8
] >;
return s;

