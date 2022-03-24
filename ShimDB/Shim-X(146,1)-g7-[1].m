A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "146.1-[1]";

s`ShimDiscriminant :=  146;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-11*x^16 + 82*x^15 - 221*x^14 + 214*x^13 + 133*x^12 - 360*x^11 - 170*x^10 + 
676*x^9 - 150*x^8 - 676*x^7 - 170*x^6 + 360*x^5 + 133*x^4 - 214*x^3 - 221*x^2 - 
82*x - y^2 - 11
]);
s`ShimGenus :=  7;

return s;
