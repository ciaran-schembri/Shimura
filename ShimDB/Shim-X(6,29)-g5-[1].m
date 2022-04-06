A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "6.29-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-64*x^12 + 813*x^10 - 3066*x^8 + 4597*x^6 - 12264*x^4 + 13008*x^2 - y^2 - 4096
]);
s`ShimGenus :=  5;

return s;
