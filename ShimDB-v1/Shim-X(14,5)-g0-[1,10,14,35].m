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

s`ShimLabel := "14.5-[1,10,14,35]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 10, 14, 35 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,27508*Y^2 - 61893*X*T - 99360*Y*T - 42120*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + 4/13*x[1]^3*x[3] + 12/13*x[1]^2*x[3]^2 + 16/13*x[1]*x[3]^3 + 8/13*x[3]^4,
x[1]^3*x[3] + 21/46*x[1]^2*x[3]^2 + 1/23*x[1]*x[3]^3 - 6/23*x[3]^4,
4/9*x[1]^2*x[3]^2 - 4/9*x[1]*x[3]^3 + 1/9*x[3]^4
] >;
return s;

