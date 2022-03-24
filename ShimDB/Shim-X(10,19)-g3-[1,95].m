Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "10.19-[1,95]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 95 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!x^7 + 5*x^6 + 13*x^5 + 55*x^4 + 91*x^3 + 
7*x^2 - 36*x - 12,Rx!x^4 + x^2 + 1]);

return s;

