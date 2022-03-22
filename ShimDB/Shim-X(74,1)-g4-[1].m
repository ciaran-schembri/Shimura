A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  74;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-2*x^10 + 47*x^8 - 328*x^6 + 946*x^4 - 4158*x^2 - y^2 - 1369
];
s`ShimGenus :=  4;

return s;
