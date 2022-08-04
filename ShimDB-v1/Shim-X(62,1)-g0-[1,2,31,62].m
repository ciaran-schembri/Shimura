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

s`ShimLabel := "62.1-[1,2,31,62]";

s`ShimDiscriminant :=  62;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2, 31, 62 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,-X*Y + T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -8, 0, -43, 0, -90, 0, -99, 0, -64]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4,
x[3]^4,
x[1]^2*x[3]^2
] >;
return s;

