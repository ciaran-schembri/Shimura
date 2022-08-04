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

s`ShimLabel := "134.1-[1,2,67,134]";

s`ShimDiscriminant :=  134;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2, 67, 134 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -19, -8, 178, -138, -625, 940, 383, -1486, 383, 940, -625, -138, 178, -8, -19]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^20 + 2*x[1]^10*x[3]^10 + x[3]^20,
2*x[1]^19*x[3] - 2*x[1]^17*x[3]^3 + 2*x[1]^15*x[3]^5 - 2*x[1]^13*x[3]^7 + 2*x[1]^11*x[3]^9 + 2*x[1]^9*x[3]^11 - 2*x[1]^7*x[3]^13 + 2*x[1]^5*x[3]^15 - 2*x[1]^3*x[3]^17 + 2*x[1]*x[3]^19,
4*x[1]^18*x[3]^2 - 8*x[1]^16*x[3]^4 + 12*x[1]^14*x[3]^6 - 16*x[1]^12*x[3]^8 + 20*x[1]^10*x[3]^10 - 16*x[1]^8*x[3]^12 + 12*x[1]^6*x[3]^14 - 8*x[1]^4*x[3]^16 + 4*x[1]^2*x[3]^18
] >;
return s;

