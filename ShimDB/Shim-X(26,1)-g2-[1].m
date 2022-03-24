A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "26.1-[1]";

s`ShimDiscriminant :=  26;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-2*x^6 + 19*x^4 - 24*x^2 - y^2 - 169
]);
s`ShimGenus :=  2;

return s;
