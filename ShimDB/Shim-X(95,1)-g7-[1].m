A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  95;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-7*x^16 - 26*x^15 - 33*x^14 + 26*x^13 + 103*x^12 + 50*x^11 - 124*x^10 - 112*x^9 
+ 79*x^8 + 112*x^7 - 124*x^6 - 50*x^5 + 103*x^4 - 26*x^3 - 33*x^2 + 26*x - y^2 -
7
];
s`ShimGenus :=  7;

return s;