A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "39.1-[1]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-7*x^8 + 30*x^7 - 21*x^6 - 48*x^5 + 37*x^4 + 48*x^3 - 21*x^2 - 30*x - y^2 - 7
]);
s`ShimGenus :=  3;

return s;
