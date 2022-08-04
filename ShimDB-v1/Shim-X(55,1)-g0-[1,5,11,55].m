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

s`ShimLabel := "55.1-[1,5,11,55]";

s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 5, 11, 55 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,-Y^2 + X*T - 2*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, -2, 3, 8, -3, -8, 3, 2, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + x[3]^4,
x[1]^3*x[3] - x[1]*x[3]^3,
x[1]^2*x[3]^2
] >;
return s;

