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

s`ShimLabel := "6.19-[1,2,3,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 418*X*Z^2 + 3610*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 0, 210, 0, -625, 0, 210, 0, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
95/4*x[1]^6 - 399/2*x[1]^4*x[3]^2 - 399/2*x[1]^2*x[3]^4 + 95/4*x[3]^6,
-95/8*x[1]^6 + 399/4*x[1]^4*x[3]^2 + 399/4*x[1]^2*x[3]^4 - 1083/8*x[1]*x[2]*x[3] - 95/8*x[3]^6,
x[1]^6 + 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 + x[3]^6
] >;
return s;

