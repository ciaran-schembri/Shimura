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

s`ShimLabel := "51.1-[1,3,17,51]";

s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3, 17, 51 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,-X*Y + T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -3, 0, 92, 0, -674, 0, -964, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4,
x[3]^4,
x[1]^2*x[3]^2
] >;
return s;

