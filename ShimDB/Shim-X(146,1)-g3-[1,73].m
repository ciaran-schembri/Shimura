Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "146.1-[1,73]";

s`ShimDiscriminant :=  146;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 73 ];
s`ShimGenus :=  3;

s`ShimModel := HyperellipticCurve([Rx!-x^8 + x^7 - x^6 + 5*x^5 - x^4 + 5*x^3 - 
11*x^2 - 3*x - 11,Rx!x^3 + x]);

return s;

