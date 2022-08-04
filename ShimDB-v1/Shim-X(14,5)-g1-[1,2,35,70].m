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

s`ShimLabel := "14.5-[1,2,35,70]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 2, 35, 70 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X^2*Z + X*Y*Z + Y^2*Z + 268*X*Z^2 + Y*Z^2 + 1619*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -23, 180, -358, 168, -677, -168, -358, -180, -23]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-155/16*x[1]^6 - 895/8*x[1]^5*x[3] - 3295/8*x[1]^4*x[3]^2 - 370*x[1]^3*x[3]^3 + 3295/8*x[1]^2*x[3]^4 - 895/8*x[1]*x[3]^5 + 155/16*x[3]^6,
139/32*x[1]^6 + 799/16*x[1]^5*x[3] + 2935/16*x[1]^4*x[3]^2 + 165*x[1]^3*x[3]^3 + 35/64*x[1]^2*x[2] - 2935/16*x[1]^2*x[3]^4 - 35/64*x[1]*x[2]*x[3] + 799/16*x[1]*x[3]^5 - 35/64*x[2]*x[3]^2 - 139/32*x[3]^6,
x[1]^6 + 12*x[1]^5*x[3] + 45*x[1]^4*x[3]^2 + 40*x[1]^3*x[3]^3 - 45*x[1]^2*x[3]^4 + 12*x[1]*x[3]^5 - x[3]^6
] >;
return s;

