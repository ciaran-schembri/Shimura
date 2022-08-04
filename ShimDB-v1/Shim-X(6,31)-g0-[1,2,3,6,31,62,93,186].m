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

s`ShimLabel := "6.31-[1,2,3,6,31,62,93,186]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6, 31, 62, 93, 186 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,-Y^2 + X*T + 18*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -177147, 0, 962442, 0, -1599309, 0, 803948, 0, -177701, 0, 11882, 0, -243]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^8 + 81*x[3]^8,
x[1]^6*x[3]^2 + 9*x[1]^2*x[3]^6,
x[1]^4*x[3]^4
] >;
return s;

