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

s`ShimLabel := "119.1-[1,7,17,119]";

s`ShimDiscriminant :=  119;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 7, 17, 119 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -823543, 0, -2559466, 0, -3649275, 0, -2945912, 0, -1307614, 0, -255164, 0, 10114, 0, -3192, 0, -427, 0, 150, 0, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/16*x[1]^4*x[3]^20 + 3/8*x[1]^2*x[3]^22 + 9/16*x[3]^24,
-1/16*x[1]^4*x[3]^20 - 1/8*x[1]^2*x[3]^22 + 3/16*x[3]^24,
1/16*x[1]^4*x[3]^20 - 1/8*x[1]^2*x[3]^22 + 1/16*x[3]^24
] >;
return s;

