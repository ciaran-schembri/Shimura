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

s`ShimLabel := "206.1-[1,2,103,206]";

s`ShimDiscriminant :=  206;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2, 103, 206 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -4096, 0, -18224, 0, -28840, 0, -19883, 0, -6646, 0, -733, 0, 220, 0, 331, 0, 42, 0, 13, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/16*x[1]^4*x[3]^16 - 1/8*x[1]^2*x[3]^18 + 1/16*x[3]^20,
-1/32*x[1]^4*x[3]^16 - 1/16*x[1]^2*x[3]^18 + 3/32*x[3]^20,
1/64*x[1]^4*x[3]^16 + 3/32*x[1]^2*x[3]^18 + 9/64*x[3]^20
] >;
return s;

