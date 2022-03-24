A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "26.3-[1]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  3;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
x1^6 - 2*x1^4 + 9*x1^2 - y1^2 + 8,
-8*x1^2 - z1^2 - 3
]);
s`ShimGenus :=  5;

return s;
