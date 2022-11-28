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

s`ShimLabel := "39.2-[1,2,3,6,13,26,39,78]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 2, 3, 6, 13, 26, 39, 78 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/81*x[1]^8*x[3]^16 - 8/81*x[1]^6*x[3]^18 + 8/27*x[1]^4*x[3]^20 - 32/81*x[1]^2*x[3]^22 + 16/81*x[3]^24,
2/81*x[1]^8*x[3]^16 + 1/9*x[1]^7*x[3]^17 + 11/81*x[1]^6*x[3]^18 - 2/9*x[1]^5*x[3]^19 - 20/27*x[1]^4*x[3]^20 - 4/9*x[1]^3*x[3]^21 + 44/81*x[1]^2*x[3]^22 + 8/9*x[1]*x[3]^23 + 32/81*x[3]^24,
4/81*x[1]^8*x[3]^16 + 4/9*x[1]^7*x[3]^17 + 157/81*x[1]^6*x[3]^18 + 46/9*x[1]^5*x[3]^19 + 239/27*x[1]^4*x[3]^20 + 92/9*x[1]^3*x[3]^21 + 628/81*x[1]^2*x[3]^22 + 32/9*x[1]*x[3]^23 + 64/81*x[3]^24
] >;
return s;

