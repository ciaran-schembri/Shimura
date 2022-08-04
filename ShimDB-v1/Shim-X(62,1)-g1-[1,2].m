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

s`ShimLabel := "62.1-[1,2]";

s`ShimDiscriminant :=  62;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
256*X^2 - 396*X*Y + 360*Y^2 - 172*Y*Z + 32*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -8, 0, -43, 0, -90, 0, -99, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4,
-x[1]^2*x[3]^2,
x[3]^4,
2*x[2]
] >;
return s;

