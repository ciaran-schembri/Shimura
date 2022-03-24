A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "22.5-[1]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-11*x^12 - 80*x^10 - 240*x^8 - 362*x^6 - 240*x^4 - 80*x^2 - y^2 - 11
]);
s`ShimGenus :=  5;

return s;
