A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  39;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-7*x^8 + 30*x^7 - 21*x^6 - 48*x^5 + 37*x^4 + 48*x^3 - 21*x^2 - 30*x - y^2 - 7
];
s`ShimGenus :=  3;

return s;
