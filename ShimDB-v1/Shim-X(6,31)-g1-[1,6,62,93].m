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

s`ShimLabel := "6.31-[1,6,62,93]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 6, 62, 93 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 83*X*Z^2 + 369*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-243/256*x[1]^5*x[3] + 1927/128*x[1]^3*x[3]^3 - 2187/256*x[1]*x[3]^5,
243/512*x[1]^5*x[3] - 1927/256*x[1]^3*x[3]^3 + 2187/512*x[1]*x[3]^5 + 243/4096*x[2],
x[1]^3*x[3]^3
] >;
return s;

