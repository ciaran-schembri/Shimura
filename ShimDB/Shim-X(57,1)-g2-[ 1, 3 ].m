Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-2*x^6 + 9*x^5 - 13*x^4 - 6*x^3 + 12*x^2 -
6*x - 1,Rx!x^3 + x]);

return s;

