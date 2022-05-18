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

s`ShimLabel := "6.29-[1,58]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  29;
s`ShimAtkinLehner :=  [ 1, 58 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-x^6 + 6*x^5 - 16*x^4 + 18*x^3 - 16*x^2 + 6*x - 1,Rx!x^3 + 1]);

return s;

