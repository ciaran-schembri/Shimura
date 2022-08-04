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

s`ShimLabel := "6.37-[1,2,37,74]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 2, 37, 74 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 - X^2*Z + X*Y*Z + Y^2*Z - 17*X*Z^2 + Y*Z^2 - 179*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18480, 0, -40200, 0, -51595, 0, -40200, 0, -18480, 0, -4096]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-157/4*x[1]^6 - 303/16*x[1]^4*x[3]^2 + 303/16*x[1]^2*x[3]^4 + 157/4*x[3]^6,
153/8*x[1]^6 + 351/32*x[1]^4*x[3]^2 - 351/32*x[1]^2*x[3]^4 - 243/64*x[2] - 153/8*x[3]^6,
x[1]^6 - 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 - x[3]^6
] >;
return s;

