A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "10.11-[1]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-8*x^12 - 35*x^10 + 30*x^8 + 277*x^6 + 120*x^4 - 560*x^2 - y^2 - 512
]);
s`ShimGenus :=  5;

return s;
