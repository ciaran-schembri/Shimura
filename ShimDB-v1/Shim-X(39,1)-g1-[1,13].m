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

s`ShimLabel := "39.1-[1,13]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 13 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
7*X^2 + 30*X*Y + 49*Y^2 + 42*Y*Z + 19*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -7, -30, -21, 48, 37, -48, -21, 30, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 - 2*x[1]^2*x[3]^2 + x[3]^4,
-x[1]^3*x[3] + x[1]*x[3]^3,
x[1]^2*x[3]^2,
x[2]
] >;
return s;

