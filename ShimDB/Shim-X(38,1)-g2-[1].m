A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  38;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-16*x^6 - 59*x^4 - 82*x^2 - y^2 - 19
];
s`ShimGenus :=  2;

return s;
