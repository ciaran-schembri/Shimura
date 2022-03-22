RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner, 
ShimModel, ShimGenus,
         ShimInfinitelyManyPoints, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimDiscriminant :=  38;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2, 19, 38 ];
s`ShimModel := Conic(P2,Y^2 - X*T);
s`ShimGenus :=  0;
s`ShimInfinitelyManyPoints := "infty many points";
s`ShimHasAdelicPoints :=  true;
s`ShimRepresentsSurface :=  [];
s`ShimCMPoints :=  [];

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimTopCurve :=  Curve(P2,[
X^6 + 59/16*X^4*T^2 + 41/8*X^2*T^4 + 1/16*Y^2*T^4 + 19/16*T^6
]);
s`ShimInvolutions := [
iso< s`ShimTopCurve -> s`ShimTopCurve | [
-X,
Y,
T
], [
-X,
Y,
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
-Y,
T
], [
-X,
-Y,
T
] > ];
return s;
