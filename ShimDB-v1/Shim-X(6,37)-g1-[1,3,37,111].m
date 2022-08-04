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

s`ShimLabel := "6.37-[1,3,37,111]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 3, 37, 111 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - X*Z^2 + Y*Z^2 + 46*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-64/9*x[1]^5*x[3] - 97/9*x[1]^3*x[3]^3 - 64/9*x[1]*x[3]^5,
32/9*x[1]^5*x[3] + 44/9*x[1]^3*x[3]^3 + 32/9*x[1]*x[3]^5 + 8/27*x[2],
x[1]^3*x[3]^3
] >;
return s;

