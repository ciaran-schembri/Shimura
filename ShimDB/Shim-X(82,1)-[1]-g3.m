A3<x1,y1,z1> := AffineSpace(Rationals(),3);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  82;
s`ShimLevel :=  1;
s`ShimEquation :=  [
4*x1^3 + 5*x1^2 - 2*x1 - y1^2 + 1,
-19*x1^2 + 18*x1 - z1^2 - 1
];
s`ShimGenus :=  3;

return s;
