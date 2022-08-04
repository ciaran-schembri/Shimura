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

s`ShimLabel := "22.3-[1,2,11,22]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 2, 11, 22 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - 115*X*Z^2 - 561*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-17/4*x[1]^6 - 447/4*x[1]^4*x[3]^2 - 447/4*x[1]^2*x[3]^4 - 17/4*x[3]^6,
17/8*x[1]^6 + 447/8*x[1]^4*x[3]^2 + 447/8*x[1]^2*x[3]^4 - 99/4*x[1]*x[2]*x[3] + 17/8*x[3]^6,
x[1]^6 + 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 + x[3]^6
] >;
return s;

