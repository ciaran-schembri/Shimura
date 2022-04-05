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

s`ShimLabel := "22.5-[1,5]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  5;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-11*x^6 + 33*x^5 - 78*x^4 + 100*x^3 - 
107*x^2 + 61*x - 29,Rx!x^2 + x + 1]);

return s;

