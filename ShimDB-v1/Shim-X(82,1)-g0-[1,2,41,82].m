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

s`ShimLabel := "82.1-[1,2,41,82]";

s`ShimDiscriminant :=  82;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2, 41, 82 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,1024*X*Y + 2817216*Y^2 + 17424*Y*T + 27*T^2); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
16*x[1]^4 - 32*x[1]^3 + 1032*x[1]^2 + 1576*x[1] - x[2]^2 + 1549,
-3*x[1]^2 - x[3]^2 - 6
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
29403/65536*x[2]^2*x[3]^2 - 3375/4096*x[3]^6 + 3488751/16384*x[3]^4 + 92626011/8192*x[3]^2,
29403/65536*x[2]^2 - 3375/4096*x[3]^4 + 3488751/16384*x[3]^2 + 92626011/8192,
-27/1024*x[2]^2*x[3]^2 - 1188513/16384*x[2]^2 + 3/64*x[3]^6 + 114633/1024*x[3]^4 - 24644169/512*x[3]^2 - 59498149293/16384
] >;
return s;

