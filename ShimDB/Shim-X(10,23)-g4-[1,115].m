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

s`ShimLabel := "10.23-[1,115]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 115 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-2*x^10 + 21*x^8 - 117*x^6 + 361*x^4 - 
552*x^2 + 320,Rx!x^4 + x^2]);

return s;

