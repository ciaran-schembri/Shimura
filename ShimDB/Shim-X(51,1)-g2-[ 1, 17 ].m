Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
        ShimModel, ShimGenus, ShimRank,
                ShimInfinitelyManyPoints, ShimHasAdelicPoints, 
ShimRepresentsSurface,
        ShimPoints, ShimChabauty, ShimCMPoints, ShimTopCurve, 
ShimProjectionEquations, ShimInvolutions >;
s := rec< RF | >;

s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 17 ];
s`ShimModel := HyperellipticCurve([Rx!-2*x^6 - 15*x^5 - 39*x^4 - 21*x^3 + 19*x^2
- 3*x,Rx!x^3 + x]);
s`ShimGenus :=  2;
s`ShimRank :=  0;
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimPoints :=  [
[ -4, 34, 1 ],
[ -3, 15, 1 ],
[ 0, 0, 1 ]
];
s`ShimChabauty :="Chabauty0";
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^8 + 964/243*X^6*T^2 + 674/243*X^4*T^4 - 92/243*X^2*T^6 + 1/243*Y^2*T^6 + 
1/81*T^8
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
