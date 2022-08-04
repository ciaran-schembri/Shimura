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

s`ShimLabel := "6.29-[1,6,58,87]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 6, 58, 87 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 56*X*Z^2 + 192*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, 13008, 0, -12264, 0, 4597, 0, -3066, 0, 813, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-16/9*x[1]^5*x[3] + 64/9*x[1]^3*x[3]^3 - 64/9*x[1]*x[3]^5,
8/9*x[1]^5*x[3] - 32/9*x[1]^3*x[3]^3 + 32/9*x[1]*x[3]^5 + 8/27*x[2],
x[1]^3*x[3]^3
] >;
return s;

