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

s`ShimLabel := "119.1-[1,17]";

s`ShimDiscriminant :=  119;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 17 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Rx!-3*x^12 + 2*x^11 + 20*x^10 - 33*x^8 + 31*x^7 + 64*x^6 - 47*x^5 - 55*x^4 + 50*x^3 + 21*x^2 - 34*x - 13,Rx!x^6 + x^4 + x^3 + 1]);

return s;

