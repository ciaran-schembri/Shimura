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

s`ShimLabel := "58.1-[1,2]";

s`ShimDiscriminant :=  58;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 455*X*Z^2 + Y*Z^2 + 3951*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1682, 0, -862, 0, -78, 0, -2]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-147/8*x[1]^3 - 841/8*x[1]*x[3]^2,
139/16*x[1]^3 + 841/16*x[1]*x[3]^2 - 841/32*x[2],
x[1]^3
] >;
return s;

