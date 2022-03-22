A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  51;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-243*x^8 - 964*x^6 - 674*x^4 + 92*x^2 - y^2 - 3
];
s`ShimGenus :=  3;

return s;
