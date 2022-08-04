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

s`ShimLabel := "21.2-[1,2,3,6]";

s`ShimDiscriminant :=  21;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 49*X*Z^2 + 136*Z^3
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-9*x[1]^6 - 89*x[1]^4 - 179*x[1]^2 - x[2]^2 + 21,
-x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
11/4*x[3]^4 + 21*x[3]^2,
21/4*x[1]*x[2] - 11/8*x[3]^4 - 21/2*x[3]^2,
x[3]^4
] >;
return s;

