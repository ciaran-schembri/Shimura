A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "87.1-[1]";

s`ShimDiscriminant :=  87;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-243*x^12 + 1178*x^10 - 7157*x^8 - 26548*x^6 - 29421*x^4 - 13446*x^2 - y^2 - 
2187
]);
s`ShimGenus :=  5;

return s;
