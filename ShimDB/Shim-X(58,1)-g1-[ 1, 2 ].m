Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel, ShimAtkinLehner, 
ShimModel, ShimJacobian, ShimGenus,
        ShimMordellWeil, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

PX<[X]>:=ProjectiveSpace(Rationals(),2);
s`ShimDiscriminant :=  58;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimModel := Curve(PX,[
-X[1]^3 - X[1]^2*X[3] + X[1]*X[2]*X[3] + X[2]^2*X[3] + 455*X[1]*X[3]^2 + 
X[2]*X[3]^2 + 3951*X[3]^3
]);
s`ShimJacobian := EllipticCurve(Rx!x^3 + x^2 - 455*x - 3951,Rx!x + 1);
s`ShimGenus :=  1;
s`ShimMordellWeil := DirectProduct(FPGroup(FreeAbelianGroup(0)), 
FPGroup(Group("C1")));
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^6 + 39*X^4*T^2 + 431*X^2*T^4 + 1/2*Y^2*T^4 + 841*T^6
]);
s`ShimInvolutions := [
iso< s`ShimTopCurve -> s`ShimTopCurve | [
X,
Y,
T
], [
X,
Y,
T
] >, 
iso< s`ShimTopCurve -> s`ShimTopCurve | [
-X,
-Y,
T
], [
-X,
-Y,
T
] > ];
return s;
