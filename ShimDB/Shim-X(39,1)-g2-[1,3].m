Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(),
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;

s`ShimLabel := "39.1-[1,3]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-2*x^6 - 3*x^5 - 8*x^4 + 3*x^3 + x^2 + 6*x
- 4,Rx!x^3 + 1]);

return s;

