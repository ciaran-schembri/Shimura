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

s`ShimLabel := "57.1-[1,3,19,57]";

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3, 19, 57 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,8100*X*Y + 132811*Y^2 + 11392*Y*T + 256*T^2); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^4 + 36*x[1]^3 + 62*x[1]^2 + 20*x[1] - x[2]^2 + 1,
-4*x[1]^2 + 2*x[1] - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
182272/4100625*x[2]^2*x[3]^2 - 25792/455625*x[3]^6 + 2186896/1366875*x[3]^4 - 110526344/61509375*x[3]^2,
182272/4100625*x[2]^2 - 25792/455625*x[3]^4 + 2186896/1366875*x[3]^2 - 110526344/61509375,
-64/2025*x[2]^2*x[3]^2 - 2124976/4100625*x[2]^2 + 4/225*x[3]^6 - 507989/455625*x[3]^4 - 82623922/4100625*x[3]^2 + 5871972743/123018750
] >;
return s;

