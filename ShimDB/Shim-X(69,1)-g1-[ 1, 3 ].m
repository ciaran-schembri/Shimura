Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel, ShimAtkinLehner, 
ShimModel, ShimJacobian, ShimGenus,
        ShimMordellWeil, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

PX<[X]>:=ProjectiveSpace(Rationals(),3);
s`ShimDiscriminant :=  69;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimModel := Curve(PX,[
X[2]^2 - X[1]*X[3],
972*X[1]^2 + 5072*X[1]*X[2] + 2664*X[2]^2 - 9072*X[2]*X[3] + 8748*X[3]^2 + 
X[4]^2
]);
s`ShimJacobian := EllipticCurve(Rx!x^3 + 37/6561*x^2 - 3517/43046721*x - 
143209/282429536481,Rx!0);
s`ShimGenus :=  1;
s`ShimMordellWeil := DirectProduct(FPGroup(FreeAbelianGroup(0)), 
FPGroup(Group("C2")));
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^8 - 1268/243*X^6*T^2 + 74/27*X^4*T^4 + 28/3*X^2*T^6 + 1/243*Y^2*T^6 + 9*T^8
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
Y,
T
], [
-X,
Y,
T
] > ];
return s;
