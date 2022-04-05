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

s`ShimLabel := "6.17-[1,17]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  17;
s`ShimAtkinLehner :=  [ 1, 17 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Rx!-51*x^6 + 153*x^5 - 826*x^4 + 1396*x^3 - 
3643*x^2 + 2970*x - 4386,Rx!x^2 + x]);

return s;

