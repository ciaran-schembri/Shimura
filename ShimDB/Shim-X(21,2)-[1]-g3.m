A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "21.2-[1]";

s`ShimDiscriminant :=  21;
s`ShimLevel :=  2;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A3,[
-9*x1^6 - 89*x1^4 - 179*x1^2 - y1^2 + 21,
-x1^2 - z1^2 - 3
]);
s`ShimGenus :=  3;

return s;
