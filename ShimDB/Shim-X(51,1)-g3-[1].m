A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "51.1-[1]";

s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-243*x^8 - 964*x^6 - 674*x^4 + 92*x^2 - y^2 - 3
]);
s`ShimGenus :=  3;

return s;
