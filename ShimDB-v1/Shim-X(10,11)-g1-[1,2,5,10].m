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

s`ShimLabel := "10.11-[1,2,5,10]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 2, 5, 10 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z + 5940*X*Z^2 + Y*Z^2 + 178685*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -512, 0, -560, 0, 120, 0, 277, 0, 30, 0, -35, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-181/4*x[1]^6 + 1075/4*x[1]^4*x[3]^2 - 1075/2*x[1]^2*x[3]^4 + 362*x[3]^6,
177/8*x[1]^6 - 1051/8*x[1]^4*x[3]^2 + 1051/4*x[1]^2*x[3]^4 - 11/8*x[2] - 177*x[3]^6,
x[1]^6 - 6*x[1]^4*x[3]^2 + 12*x[1]^2*x[3]^4 - 8*x[3]^6
] >;
return s;

