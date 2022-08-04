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

s`ShimLabel := "39.2-[1,3,13,39]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 3, 13, 39 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/9*x[1]^4*x[3]^16 - 4/9*x[1]^2*x[3]^18 + 4/9*x[3]^20,
-1/9*x[1]^4*x[3]^16 - 1/3*x[1]^3*x[3]^17 + 1/9*x[1]^2*x[3]^18 + 2/3*x[1]*x[3]^19 + 2/9*x[3]^20,
1/9*x[1]^4*x[3]^16 + 2/3*x[1]^3*x[3]^17 + 11/9*x[1]^2*x[3]^18 + 2/3*x[1]*x[3]^19 + 1/9*x[3]^20
] >;
return s;

