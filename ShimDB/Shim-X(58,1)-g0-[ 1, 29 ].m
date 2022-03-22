RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner, 
ShimModel, ShimGenus,
         ShimInfinitelyManyPoints, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimDiscriminant :=  58;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 29 ];
s`ShimModel := Conic(P2,-X*Y + T^2);
s`ShimGenus :=  0;
s`ShimInfinitelyManyPoints := "infty many points";
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
-Y,
T
], [
X,
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
] > ];
return s;
