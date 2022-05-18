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

s`ShimLabel := "159.1-[1,3]";

s`ShimDiscriminant :=  159;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-x^10 - 2*x^9 - 6*x^8 + 27*x^7 + 31*x^6 - 113*x^5 - 19*x^4 + 141*x^3 - 38*x^2 - 26*x - 1,Rx!x^5 + x^4 + x^2 + x + 1]);

return s;

