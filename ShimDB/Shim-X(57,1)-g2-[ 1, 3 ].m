Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
        ShimModel, ShimGenus, ShimRank,
                ShimInfinitelyManyPoints, ShimHasAdelicPoints, 
ShimRepresentsSurface,
        ShimPoints, ShimChabauty, ShimCMPoints, ShimTopCurve, 
ShimProjectionEquations, ShimInvolutions >;
s := rec< RF | >;

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimModel := HyperellipticCurve([Rx!-2*x^6 + 9*x^5 - 13*x^4 - 6*x^3 + 12*x^2 -
6*x - 1,Rx!x^3 + x]);
s`ShimGenus :=  2;
s`ShimRank :=  0;
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimPoints :=  [
[ -1, 1, 1 ]
];
s`ShimChabauty :="Chabauty0";
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
Z1,
T1
], [
X1,
Y1,
Z1,
T1
] >, 
iso< s`ShimTopCurve -> s`ShimTopCurve | [
X1,
-Y1,
-Z1,
T1
], [
X1,
-Y1,
-Z1,
T1
] > ];
return s;
