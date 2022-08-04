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

s`ShimLabel := "14.5-[1,5,14,70]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 5, 14, 70 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,600281*Y^2 - 48622761*X*T + 7056720*Y*T - 2690010*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 - 32/41*x[1]^3*x[3] + 24/41*x[1]^2*x[3]^2 - 8/41*x[1]*x[3]^3 + 1/41*x[3]^4,
x[1]^3*x[3] + 186/121*x[1]^2*x[3]^2 - 103/121*x[1]*x[3]^3 + 18/121*x[3]^4,
1/81*x[1]^2*x[3]^2 + 4/81*x[1]*x[3]^3 + 4/81*x[3]^4
] >;
return s;

