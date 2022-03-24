Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "51.1-[1,3]";

s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(PX,[
-X[1]^3 - X[1]^2*X[3] + X[2]^2*X[3] + 59*X[1]*X[3]^2 + X[2]*X[3]^2 + 196*X[3]^3
]);

return s;

