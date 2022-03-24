A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "15.2-[1]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-3*x^8 - 10*x^6 - 11*x^4 - 40*x^2 - y^2 - 48
]);
s`ShimGenus :=  3;

return s;
A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "15.2-[1]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-3*x^8 - 10*x^6 - 11*x^4 - 40*x^2 - y^2 - 48
]);
s`ShimGenus :=  3;

return s;
