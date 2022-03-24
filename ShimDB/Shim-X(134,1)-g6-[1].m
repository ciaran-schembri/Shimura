A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  134;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-19*x^14 - 8*x^13 + 178*x^12 - 138*x^11 - 625*x^10 + 940*x^9 + 383*x^8 - 
1486*x^7 + 383*x^6 + 940*x^5 - 625*x^4 - 138*x^3 + 178*x^2 - 8*x - y^2 - 19
];
s`ShimGenus :=  6;

return s;
