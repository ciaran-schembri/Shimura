Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,  ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimDiscriminant :=  119;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 7 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-3*x^10 + 3*x^9 + 5*x^8 - x^7 - 17*x^6 - 
2*x^5 + 18*x^4 + 6*x^3 - 12*x^2 - 9*x + 4,Rx!x^5 + x^4 + x^2 + x + 1]);

return s;

