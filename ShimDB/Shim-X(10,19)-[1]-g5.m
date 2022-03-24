A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "10.19-[1]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
-8*x1^6 + 57*x1^4 - 40*x1^2 - y1^2 + 16,
5*x1^2 - z1^2 - 32
]);
s`ShimGenus :=  5;

return s;
