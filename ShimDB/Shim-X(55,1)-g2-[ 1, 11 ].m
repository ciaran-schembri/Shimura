Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
        ShimModel, ShimGenus, ShimRank,
                ShimInfinitelyManyPoints, ShimHasAdelicPoints, 
ShimRepresentsSurface,
        ShimPoints, ShimChabauty, ShimCMPoints, ShimTopCurve, 
ShimProjectionEquations, ShimInvolutions >;
s := rec< RF | >;

s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 11 ];
s`ShimModel := HyperellipticCurve([Rx!-x^6 - 6*x^4 + x^3 - 10*x^2 - 2*x - 
3,Rx!x^3 + x^2 + x]);
s`ShimGenus :=  2;
s`ShimRank :=  0;
s`ShimHasAdelicPoints :=  false;
s`ShimRepresentsSurface :=  [];
s`ShimPoints :=  [];
s`ShimChabauty :="Chabauty0";
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^8 - 2/3*X^7*T - X^6*T^2 + 8/3*X^5*T^3 + X^4*T^4 - 8/3*X^3*T^5 - X^2*T^6 + 
1/3*Y^2*T^6 + 2/3*X*T^7 + T^8
]);
s`ShimInvolutions := [
iso< s`ShimTopCurve -> s`ShimTopCurve | [
-X^3*T,
-Y*T^3,
X^4
], [
-X^3*T,
-Y*T^3,
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
