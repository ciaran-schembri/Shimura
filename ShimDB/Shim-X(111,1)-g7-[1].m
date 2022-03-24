A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "111.1-[1]";

s`ShimDiscriminant :=  111;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-19*x^16 + 44*x^15 + 16*x^14 + 2*x^13 - 150*x^12 - 94*x^11 + 297*x^10 + 170*x^9 
- 331*x^8 - 170*x^7 + 297*x^6 + 94*x^5 - 150*x^4 - 2*x^3 + 16*x^2 - 44*x - y^2 -
19
]);
s`ShimGenus :=  7;

return s;
