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

s`ShimLabel := "6.31-[1,2,3,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6 ];
s`ShimGenus :=  1;

P2<X,Y,Z>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(P2,[
-X^3 + X*Y*Z + Y^2*Z + 1395*X*Z^2 + 20181*Z^3
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1147/64*x[1]^6 + 6479/64*x[1]^4*x[3]^2 - 19437/64*x[1]^2*x[3]^4 + 30969/64*x[3]^6,
1147/128*x[1]^6 - 6479/128*x[1]^4*x[3]^2 + 19437/128*x[1]^2*x[3]^4 - 961/512*x[2] - 30969/128*x[3]^6,
x[1]^6 - 9*x[1]^4*x[3]^2 + 27*x[1]^2*x[3]^4 - 27*x[3]^6
] >;
return s;

