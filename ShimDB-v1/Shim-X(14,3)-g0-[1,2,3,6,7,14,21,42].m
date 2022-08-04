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

s`ShimLabel := "14.3-[1,2,3,6,7,14,21,42]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6, 7, 14, 21, 42 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
-7*x[1]^4 + 22*x[1]^2 - x[2]^2 + 1,
-9*x[1]^2 - x[3]^2 - 2
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1,
-9*x[3]^2 - 18,
81*x[3]^4 + 324*x[3]^2 + 324
] >;
return s;

