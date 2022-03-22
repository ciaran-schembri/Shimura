Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel, ShimAtkinLehner, 
ShimModel, ShimJacobian, ShimGenus,
        ShimMordellWeil, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

PX<[X]>:=ProjectiveSpace(Rationals(),2);
s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 57 ];
s`ShimModel := Curve(PX,[
-X[1]^3 + X[1]^2*X[3] + X[2]^2*X[3] + 2*X[1]*X[3]^2 + X[2]*X[3]^2 - 2*X[3]^3
]);
s`ShimJacobian := EllipticCurve(Rx!x^3 - x^2 - 2*x + 2,Rx!1);
s`ShimGenus :=  1;
s`ShimMordellWeil := DirectProduct(FPGroup(FreeAbelianGroup(1)), 
FPGroup(Group("C1")));
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimCMPoints :=  [];

P3<X1,Y1,Z1,T1>:=ProjectiveSpace(Rationals(),3);
s`ShimTopCurve :=  Curve(P3,[
Z1^4 - 20*X1*Z1^2*T1 - 16/9*Y1^2*T1^2 - 311/9*Z1^2*T1^2 + 266/3*X1*T1^3 - 
304/9*T1^4,
X1^2 + 1/4*Z1^2 - 1/2*X1*T1 + 1/4*T1^2
]);
s`ShimInvolutions := [
iso< s`ShimTopCurve -> s`ShimTopCurve | [
X1,
Y1,
-Z1,
T1
], [
X1,
Y1,
-Z1,
T1
] >, 
iso< s`ShimTopCurve -> s`ShimTopCurve | [
X1,
Y1,
Z1,
T1
], [
X1,
Y1,
Z1,
T1
] > ];
return s;
