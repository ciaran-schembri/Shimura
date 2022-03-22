Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
        ShimModel, ShimGenus, ShimRank,
                ShimInfinitelyManyPoints, ShimHasAdelicPoints, 
ShimRepresentsSurface,
        ShimPoints, ShimChabauty, ShimCMPoints, ShimTopCurve, 
ShimProjectionEquations, ShimInvolutions >;
s := rec< RF | >;

s`ShimDiscriminant :=  39;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimModel := HyperellipticCurve([Rx!-2*x^6 - 3*x^5 - 8*x^4 + 3*x^3 + x^2 + 6*x
- 4,Rx!x^3 + 1]);
s`ShimGenus :=  2;
s`ShimRank :=  0;
s`ShimHasAdelicPoints :=  false;
s`ShimRepresentsSurface :=  [];
s`ShimPoints :=  [];
s`ShimChabauty :="Chabauty0";
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^8 - 30/7*X^7*T + 3*X^6*T^2 + 48/7*X^5*T^3 - 37/7*X^4*T^4 - 48/7*X^3*T^5 + 
3*X^2*T^6 + 1/7*Y^2*T^6 + 30/7*X*T^7 + T^8
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
-X^3*T,
-Y*T^3,
X^4
], [
-X^3*T,
-Y*T^3,
X^4
] > ];
return s;
