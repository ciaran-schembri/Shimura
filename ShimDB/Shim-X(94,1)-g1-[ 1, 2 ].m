Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimDiscriminant :=  94;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(PX,[
X[2]^2 - X[1]*X[3],
32*X[1]^2 + 276*X[1]*X[2] + 936*X[2]^2 + 1524*X[2]*X[3] + 1024*X[3]^2 + X[4]^2
]);

return s;

