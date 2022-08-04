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

s`ShimLabel := "22.3-[1,6,11,66]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 6, 11, 66 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,-Y^2 + X*T + 2*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + x[3]^4,
x[1]^3*x[3] + x[1]*x[3]^3,
x[1]^2*x[3]^2
] >;
return s;

