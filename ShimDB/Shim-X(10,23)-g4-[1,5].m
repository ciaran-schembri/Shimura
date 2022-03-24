Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "10.23-[1,5]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  4;

s`ShimModel := HyperellipticCurve([Rx!-172*x^10 + 224*x^9 - 574*x^8 - 78*x^7 - 
957*x^6 - 356*x^5 - 2928*x^4 + 1599*x^3 - 3657*x^2 + 1588*x - 940,Rx!x^3 + 
x^2]);

return s;

