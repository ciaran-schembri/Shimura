A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "14.5-[1]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  5;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-23*x^8 - 180*x^7 - 358*x^6 - 168*x^5 - 677*x^4 + 168*x^3 - 358*x^2 + 180*x - 
y^2 - 23
]);
s`ShimGenus :=  3;

return s;
