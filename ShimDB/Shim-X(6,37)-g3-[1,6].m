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

s`ShimLabel := "6.37-[1,6]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner :=  [ 1, 6 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-144*x^8 - 929*x^6 - 2245*x^4 - 2411*x^2 -
972,Rx!x^3 + x]);

return s;

