RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner, 
ShimModel, ShimGenus,
         ShimInfinitelyManyPoints, ShimHasAdelicPoints, ShimRepresentsSurface, 
ShimCMPoints, ShimTopCurve, ShimProjectionEquations, ShimInvolutions  >;
s := rec< RF | >;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3, 19, 57 ];
s`ShimModel := Conic(P2,8100*X*Y + 132811*Y^2 + 11392*Y*T + 256*T^2);
s`ShimGenus :=  0;
s`ShimInfinitelyManyPoints := "infty many points";
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
-Y1,
Z1,
T1
], [
X1,
-Y1,
Z1,
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
