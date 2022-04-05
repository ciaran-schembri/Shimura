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

s`ShimLabel := "74.1-[1,37]";

s`ShimDiscriminant :=  74;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 37 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-x^6 + x^5 + 2*x^4 - 4*x^3 - x^2 + 
4*x,Rx!x^2 + x]);

return s;

