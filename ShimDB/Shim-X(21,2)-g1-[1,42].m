Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "21.2-[1,42]";

s`ShimDiscriminant :=  21;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 42 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(PX,[
-X[1]^3 + X[1]*X[2]*X[3] + X[2]^2*X[3] - X[1]*X[3]^2
]);

return s;

