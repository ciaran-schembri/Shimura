A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "94.1-[1]";

s`ShimDiscriminant :=  94;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-8*x^8 + 69*x^6 - 234*x^4 + 381*x^2 - y^2 - 256
]);
s`ShimGenus :=  3;

return s;
