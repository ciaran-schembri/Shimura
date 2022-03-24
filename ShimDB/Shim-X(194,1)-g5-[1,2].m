Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "194.1-[1,2]";

s`ShimDiscriminant :=  194;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 2 ];
s`ShimGenus :=  5;

s`ShimModel := HyperellipticCurve([Rx!-10*x^12 + 78*x^11 - 248*x^10 + 560*x^9 - 
1135*x^8 + 1726*x^7 - 2367*x^6 + 2432*x^5 - 2188*x^4 + 1426*x^3 - 794*x^2 + 
272*x - 76,Rx!x^5 + x^4 + x^3 + x^2]);

return s;

