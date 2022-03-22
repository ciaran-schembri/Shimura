A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  69;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-243*x^8 + 1268*x^6 - 666*x^4 - 2268*x^2 - y^2 - 2187
];
s`ShimGenus :=  3;

return s;
