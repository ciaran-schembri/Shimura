A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "14.3-[1]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
-7*x1^4 + 22*x1^2 - y1^2 + 1,
-9*x1^2 - z1^2 - 2
]);
s`ShimGenus :=  3;

return s;
