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

s`ShimLabel := "10.19-[1,10,19,190]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 10, 19, 190 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z - 2*X*Z^2 - 2*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-8*x[1]^6 + 57*x[1]^4 - 40*x[1]^2 - x[2]^2 + 16,
5*x[1]^2 - x[3]^2 - 32
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-5/4*x[3]^4 - 75*x[3]^2 - 1120,
-25/4*x[1]*x[2] + 5/8*x[3]^4 + 75/2*x[3]^2 + 560,
x[3]^4 + 64*x[3]^2 + 1024
] >;
return s;

