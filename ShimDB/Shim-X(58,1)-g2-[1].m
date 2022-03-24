A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "58.1-[1]";

s`ShimDiscriminant :=  58;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-2*x^6 - 78*x^4 - 862*x^2 - y^2 - 1682
]);
s`ShimGenus :=  2;

return s;
