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

s`ShimLabel := "22.5-[1,2,5,10]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 2, 5, 10 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - 9*X*Z^2 + 25*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, 0, -80, 0, -240, 0, -362, 0, -240, 0, -80, 0, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-11/4*x[1]^5*x[3] - 27/4*x[1]^3*x[3]^3 - 11/4*x[1]*x[3]^5,
11/8*x[1]^5*x[3] + 27/8*x[1]^3*x[3]^3 + 11/8*x[1]*x[3]^5 + 11/8*x[2],
x[1]^3*x[3]^3
] >;
return s;

