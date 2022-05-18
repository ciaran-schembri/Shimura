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

s`ShimLabel := "111.1-[1,37]";

s`ShimDiscriminant :=  111;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 37 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-x^8 - 5*x^7 - 10*x^6 - 10*x^5 - 9*x^4 - 7*x^3 - 4*x^2 - 2*x - 1,Rx!x^4 + x^3 + x^2 + x + 1]);

return s;

