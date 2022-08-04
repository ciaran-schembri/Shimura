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

s`ShimLabel := "22.5-[1,5,11,55]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 5, 11, 55 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z - 296*X*Z^2 + Y*Z^2 - 1702*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -11, 0, -80, 0, -240, 0, -362, 0, -240, 0, -80, 0, -11]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-55*x[1]^6 - 91*x[1]^4*x[3]^2 + 91*x[1]^2*x[3]^4 + 55*x[3]^6,
27*x[1]^6 + 47*x[1]^4*x[3]^2 - 47*x[1]^2*x[3]^4 - 128*x[2] - 27*x[3]^6,
x[1]^6 - 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 - x[3]^6
] >;
return s;

