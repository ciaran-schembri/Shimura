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

s`ShimLabel := "14.3-[1,7]";

s`ShimDiscriminant :=  14;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 7 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!7*x^6 + 21*x^5 + 86*x^4 + 137*x^3 + 146*x^2 + 81*x + 27,Rx!x^2 + x]);

return s;

