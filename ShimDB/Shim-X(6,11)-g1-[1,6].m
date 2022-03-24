Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "6.11-[1,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(PX,[
X[2]^2 - X[1]*X[3],
19*X[1]^2 + 166*X[1]*X[2] + 197*X[2]^2 - 726*X[2]*X[3] + 363*X[3]^2 + X[4]^2
]);

return s;

