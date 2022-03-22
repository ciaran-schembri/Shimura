Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel, ShimAtkinLehner, 
ShimModel, ShimJacobian, ShimGenus,
        ShimMordellWeil, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

PX<[X]>:=ProjectiveSpace(Rationals(),2);
s`ShimDiscriminant :=  38;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 19 ];
s`ShimModel := Curve(PX,[
-X[1]^3 + X[1]*X[2]*X[3] + X[2]^2*X[3] - 9*X[1]*X[3]^2 + X[2]*X[3]^2 - 90*X[3]^3
]);
s`ShimJacobian := EllipticCurve(Rx!x^3 + 9*x + 90,Rx!x + 1);
s`ShimGenus :=  1;
s`ShimMordellWeil := DirectProduct(FPGroup(FreeAbelianGroup(0)), 
FPGroup(Group("C3")));
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^6 + 59/16*X^4*T^2 + 41/8*X^2*T^4 + 1/16*Y^2*T^4 + 19/16*T^6
]);
s`ShimInvolutions := [
iso< s`ShimTopCurve -> s`ShimTopCurve | [
-X,
Y,
T
], [
-X,
Y,
T
] >, 
iso< s`ShimTopCurve -> s`ShimTopCurve | [
X,
Y,
T
], [
X,
Y,
T
] > ];
return s;
