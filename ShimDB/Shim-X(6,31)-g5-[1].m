A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "6.31-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  31;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-243*x^12 + 11882*x^10 - 177701*x^8 + 803948*x^6 - 1599309*x^4 + 962442*x^2 - 
y^2 - 177147
]);
s`ShimGenus :=  5;

return s;
