A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "35.1-[1]";

s`ShimDiscriminant :=  35;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-7*x^8 - 100*x^6 - 554*x^4 - 1380*x^2 - y^2 - 7
]);
s`ShimGenus :=  3;

return s;
