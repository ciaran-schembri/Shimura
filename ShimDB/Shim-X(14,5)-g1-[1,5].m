Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "14.5-[1,5]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(PX,[
X[2]^2 - X[1]*X[3],
23*X[1]^2 + 274458/1271*X[1]*X[2] + 445870093/3230882*X[2]^2 + 
75751624885/4106451022*X[2]*X[3] - 105061922739001/41754393991696*X[3]^2 + 
X[4]^2
]);

return s;

