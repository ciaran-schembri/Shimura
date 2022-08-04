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

s`ShimLabel := "6.17-[1,2,3,6,17,34,51,102]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6, 17, 34, 51, 102 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
17*x[1]^4 - 10*x[1]^2 - x[2]^2 + 9,
-3*x[1]^2 - x[3]^2 - 16
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1,
-3*x[3]^2 - 48,
9*x[3]^4 + 288*x[3]^2 + 2304
] >;
return s;

