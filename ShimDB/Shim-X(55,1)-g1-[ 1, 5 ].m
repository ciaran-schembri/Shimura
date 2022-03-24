Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(PX,[
X[2]^2 - X[1]*X[3],
3*X[1]^2 + 2*X[1]*X[2] + 9*X[2]^2 - 2*X[2]*X[3] + 3*X[3]^2 + X[4]^2
]);

return s;

