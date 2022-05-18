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

s`ShimLabel := "206.1-[1,2]";

s`ShimDiscriminant :=  206;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-x^10 + 3*x^9 - 8*x^8 + 16*x^7 - 30*x^6 - 3*x^5 + 8*x^4 + 40*x^3 + 82*x^2 - 64*x - 76,Rx!x^4 + x^2]);

return s;

