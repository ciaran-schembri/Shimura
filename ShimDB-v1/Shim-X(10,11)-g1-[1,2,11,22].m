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

s`ShimLabel := "10.11-[1,2,11,22]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 2, 11, 22 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - 9*X*Z^2 + 25*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -512, 0, -560, 0, 120, 0, 277, 0, 30, 0, -35, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
7/4*x[1]^6 + 47/4*x[1]^4*x[3]^2 + 47/2*x[1]^2*x[3]^4 + 14*x[3]^6,
-7/8*x[1]^6 - 47/8*x[1]^4*x[3]^2 - 47/4*x[1]^2*x[3]^4 + 5/8*x[2] - 7*x[3]^6,
x[1]^6 + 6*x[1]^4*x[3]^2 + 12*x[1]^2*x[3]^4 + 8*x[3]^6
] >;
return s;

