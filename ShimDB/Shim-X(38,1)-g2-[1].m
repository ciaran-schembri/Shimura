A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "38.1-[1]";

s`ShimDiscriminant :=  38;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-16*x^6 - 59*x^4 - 82*x^2 - y^2 - 19
]);
s`ShimGenus :=  2;

return s;
