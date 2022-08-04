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

s`ShimLabel := "26.1-[1,2]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X^2*Z + X*Y*Z + Y^2*Z + 213*X*Z^2 + Y*Z^2 + 1257*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -169, 0, -24, 0, 19, 0, -2]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-7/4*x[1]^3 - 169/4*x[1]*x[3]^2,
3/8*x[1]^3 + 169/8*x[1]*x[3]^2 - 169/8*x[2],
x[1]^3
] >;
return s;

