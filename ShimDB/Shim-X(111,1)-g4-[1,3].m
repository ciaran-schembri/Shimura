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

s`ShimLabel := "111.1-[1,3]";

s`ShimDiscriminant :=  111;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-4*x^10 + 4*x^9 - 17*x^8 + 28*x^7 - 42*x^6 + 61*x^5 - 73*x^4 + 57*x^3 - 60*x^2 + 33*x - 6,Rx!x^5 + x^4 + x^3 + x^2 + x]);

return s;

