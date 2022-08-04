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

s`ShimLabel := "14.5-[1,2]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
23*X^2 - 180*X*Y + 450*Y^2 - 708*Y*Z + 1439*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 - 2*x[1]^2*x[3]^2 + x[3]^4,
-x[1]^3*x[3] + x[1]*x[3]^3,
x[1]^2*x[3]^2,
x[2]
] >;
return s;

