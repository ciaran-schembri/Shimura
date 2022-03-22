A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  58;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-2*x^6 - 78*x^4 - 862*x^2 - y^2 - 1682
];
s`ShimGenus :=  2;

return s;
