Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
        ShimModel, ShimGenus, ShimRank,
                ShimInfinitelyManyPoints, ShimHasAdelicPoints, 
ShimRepresentsSurface,
        ShimPoints, ShimChabauty, ShimCMPoints, ShimTopCurve, 
ShimProjectionEquations, ShimInvolutions >;
s := rec< RF | >;

s`ShimDiscriminant :=  74;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimModel := HyperellipticCurve([Rx!-6*x^6 - 16*x^5 - 8*x^4 - 8*x^3 - 7*x^2 + 
17*x - 5,Rx!x^2 + x]);
s`ShimGenus :=  2;
s`ShimRank :=  0;
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimPoints :=  [
[ -5, -15, 3 ]
];
s`ShimChabauty :="Chabauty0";
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^10 - 47/2*X^8*T^2 + 164*X^6*T^4 - 473*X^4*T^6 + 2079*X^2*T^8 + 1/2*Y^2*T^8 + 
1369/2*T^10
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
