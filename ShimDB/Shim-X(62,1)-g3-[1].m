A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  62;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-64*x^8 - 99*x^6 - 90*x^4 - 43*x^2 - y^2 - 8
];
s`ShimGenus :=  3;

return s;
