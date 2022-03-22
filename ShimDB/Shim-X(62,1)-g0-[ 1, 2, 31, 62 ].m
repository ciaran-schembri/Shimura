RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner, 
ShimModel, ShimGenus,
         ShimInfinitelyManyPoints, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimDiscriminant :=  62;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2, 31, 62 ];
s`ShimModel := Conic(P2,-X*Y + T^2);
s`ShimGenus :=  0;
s`ShimInfinitelyManyPoints := "infty many points";
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^8 + 99/64*X^6*T^2 + 45/32*X^4*T^4 + 43/64*X^2*T^6 + 1/64*Y^2*T^6 + 1/8*T^8
]);
s`ShimInvolutions := [
iso< s`ShimTopCurve -> s`ShimTopCurve | [
-X,
-Y,
T
], [
-X,
-Y,
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
] >, 
iso< s`ShimTopCurve -> s`ShimTopCurve | [
X,
-Y,
T
], [
X,
-Y,
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
