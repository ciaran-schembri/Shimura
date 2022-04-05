A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "6.11-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  11;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-19*x^8 - 166*x^7 - 439*x^6 - 166*x^5 + 612*x^4 + 166*x^3 - 439*x^2 + 166*x - 
y^2 - 19
]);
s`ShimGenus :=  3;

return s;
