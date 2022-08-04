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

s`ShimLabel := "10.13-[1,5,26,130]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner :=  [ 1, 5, 26, 130 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 13*X*Z^2 + Y*Z^2 - 156*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
5*x[1]^4 - 74*x[1]^2 - x[2]^2 + 325,
-2*x[1]^2 - x[3]^2 - 25
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-5/8*x[3]^2 - 175/8,
5/8*x[1]*x[2] + 5/16*x[3]^2 + 167/16,
1
] >;
return s;

