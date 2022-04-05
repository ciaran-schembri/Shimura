A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "22.3-[1]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-27*x^8 - 308*x^6 - 2146*x^4 - 308*x^2 - y^2 - 27
]);
s`ShimGenus :=  3;

return s;
