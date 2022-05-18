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

s`ShimLabel := "39.2-[1,26]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 26 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-2*x^10 - 16*x^9 - 61*x^8 - 135*x^7 - 202*x^6 - 222*x^5 - 202*x^4 - 135*x^3 - 61*x^2 - 16*x - 2,Rx!x^5 + 1]);

return s;

