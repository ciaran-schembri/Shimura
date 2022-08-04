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

s`ShimLabel := "10.13-[1,13]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  13;
s`ShimAtkinLehner :=  [ 1, 13 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
-208*X^2 - 504*Y^2 - 325*Z^2 + T^2
]);

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
5*x[1]^4 - 74*x[1]^2 - x[2]^2 + 325,
-2*x[1]^2 - x[3]^2 - 25
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[3]^2,
2*x[1]*x[3],
-2*x[3]^2 - 50,
-20*x[2]
] >;
return s;

