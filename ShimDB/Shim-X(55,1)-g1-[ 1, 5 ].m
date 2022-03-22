Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel, ShimAtkinLehner, 
ShimModel, ShimJacobian, ShimGenus,
        ShimMordellWeil, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

PX<[X]>:=ProjectiveSpace(Rationals(),3);
s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimModel := Curve(PX,[
X[2]^2 - X[1]*X[3],
3*X[1]^2 + 2*X[1]*X[2] + 9*X[2]^2 - 2*X[2]*X[3] + 3*X[3]^2 + X[4]^2
]);
s`ShimJacobian := EllipticCurve(Rx!x^3 + 2*x^2 + 41/81*x - 20/243,Rx!0);
s`ShimGenus :=  1;
s`ShimMordellWeil := DirectProduct(FPGroup(FreeAbelianGroup(0)), 
FPGroup(Group("C2^2")));
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^8 - 2/3*X^7*T - X^6*T^2 + 8/3*X^5*T^3 + X^4*T^4 - 8/3*X^3*T^5 - X^2*T^6 + 
1/3*Y^2*T^6 + 2/3*X*T^7 + T^8
]);
s`ShimInvolutions := [
iso< s`ShimTopCurve -> s`ShimTopCurve | [
-X^3*T,
Y*T^3,
X^4
], [
-X^3*T,
Y*T^3,
X^4
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
