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

s`ShimLabel := "15.2-[1,2,15,30]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 15, 30 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,-Y^2 + X*T + 4*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + 4*x[3]^4,
x[1]^3*x[3] + 2*x[1]*x[3]^3,
x[1]^2*x[3]^2
] >;
return s;

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

s`ShimLabel := "15.2-[1,2,15,30]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 15, 30 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,-Y^2 + X*T + 4*T^2); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^4 + 4*x[3]^4,
x[1]^3*x[3] + 2*x[1]*x[3]^3,
x[1]^2*x[3]^2
] >;
return s;

