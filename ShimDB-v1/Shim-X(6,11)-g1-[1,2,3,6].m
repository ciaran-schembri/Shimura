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

s`ShimLabel := "6.11-[1,2,3,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 10055*X*Z^2 + 390309*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, 166, -439, 166, 612, -166, -439, -166, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
25*x[1]^6 + 363*x[1]^5*x[3] + 75*x[1]^4*x[3]^2 + 75*x[1]^2*x[3]^4 - 363*x[1]*x[3]^5 + 25*x[3]^6,
-25/2*x[1]^6 - 363/2*x[1]^5*x[3] - 75/2*x[1]^4*x[3]^2 + 363/2*x[1]^2*x[2] - 75/2*x[1]^2*x[3]^4 - 363*x[1]*x[2]*x[3] + 363/2*x[1]*x[3]^5 - 363/2*x[2]*x[3]^2 - 25/2*x[3]^6,
x[1]^6 + 3*x[1]^4*x[3]^2 + 3*x[1]^2*x[3]^4 + x[3]^6
] >;
return s;

