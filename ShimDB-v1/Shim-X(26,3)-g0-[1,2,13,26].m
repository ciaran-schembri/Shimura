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

s`ShimLabel := "26.3-[1,2,13,26]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 2, 13, 26 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,X^2 - 1/8*Y*T); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
x[1]^6 - 2*x[1]^4 + 9*x[1]^2 - x[2]^2 + 8,
-8*x[1]^2 - x[3]^2 - 3
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-8*x[3]^3 - 24*x[3],
-64*x[1]*x[3]^2 - 192*x[1],
64*x[1]*x[3]^2
] >;
return s;

