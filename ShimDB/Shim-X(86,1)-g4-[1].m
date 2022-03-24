A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  86;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-16*x^10 + 245*x^8 - 756*x^6 - 1506*x^4 - 740*x^2 - y^2 - 43
];
s`ShimGenus :=  4;

return s;
