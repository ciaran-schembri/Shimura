A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "134.1-[1]";

s`ShimDiscriminant :=  134;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-19*x^14 - 8*x^13 + 178*x^12 - 138*x^11 - 625*x^10 + 940*x^9 + 383*x^8 - 
1486*x^7 + 383*x^6 + 940*x^5 - 625*x^4 - 138*x^3 + 178*x^2 - 8*x - y^2 - 19
]);
s`ShimGenus :=  6;

return s;
