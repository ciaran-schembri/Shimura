Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimDiscriminant :=  95;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-2*x^8 + 6*x^7 - 23*x^6 + 38*x^5 - 60*x^4 
+ 45*x^3 - 31*x^2 + 3*x - 11,Rx!x^4 + x^3 + x^2 + x + 1]);

return s;

