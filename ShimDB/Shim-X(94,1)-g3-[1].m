A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  94;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-8*x^8 + 69*x^6 - 234*x^4 + 381*x^2 - y^2 - 256
];
s`ShimGenus :=  3;

return s;
