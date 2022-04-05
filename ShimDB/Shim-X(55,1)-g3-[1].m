A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "55.1-[1]";

s`ShimDiscriminant :=  55;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-3*x^8 + 2*x^7 + 3*x^6 - 8*x^5 - 3*x^4 + 8*x^3 + 3*x^2 - 2*x - y^2 - 3
]);
s`ShimGenus :=  3;

return s;
