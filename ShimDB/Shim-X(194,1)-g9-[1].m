A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,
  ShimAtkinLehner,  ShimGenus, ShimModel >;
s := rec< RF | >;
s`ShimLabel := "194.1-[1]";

s`ShimDiscriminant :=  194;
s`ShimLevel :=  1;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-19*x^20 - 92*x^19 - 286*x^18 - 592*x^17 - 921*x^16 - 1016*x^15 - 872*x^14 + 
460*x^13 + 1545*x^12 + 1752*x^11 + 34*x^10 - 1752*x^9 + 1545*x^8 - 460*x^7 - 
872*x^6 + 1016*x^5 - 921*x^4 + 592*x^3 - 286*x^2 + 92*x - y^2 - 19
]);
s`ShimGenus :=  9;

return s;
