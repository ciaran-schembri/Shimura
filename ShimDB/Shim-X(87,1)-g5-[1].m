A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  87;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-243*x^12 + 1178*x^10 - 7157*x^8 - 26548*x^6 - 29421*x^4 - 13446*x^2 - y^2 - 
2187
];
s`ShimGenus :=  5;

return s;
