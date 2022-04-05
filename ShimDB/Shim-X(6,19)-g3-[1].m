A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "6.19-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  19;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-19*x^8 + 210*x^6 - 625*x^4 + 210*x^2 - y^2 - 19
]);
s`ShimGenus :=  3;

return s;
