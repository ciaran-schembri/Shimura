Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimDiscriminant :=  26;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(PX,[
-X[1]^3 + X[1]^2*X[3] + X[1]*X[2]*X[3] + X[2]^2*X[3] + 213*X[1]*X[3]^2 + 
X[2]*X[3]^2 + 1257*X[3]^3
]);

return s;

Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimDiscriminant :=  26;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Curve(PX,[
-X[1]^3 + X[1]^2*X[3] + X[1]*X[2]*X[3] + X[2]^2*X[3] + 213*X[1]*X[3]^2 + 
X[2]*X[3]^2 + 1257*X[3]^3
]);

return s;

