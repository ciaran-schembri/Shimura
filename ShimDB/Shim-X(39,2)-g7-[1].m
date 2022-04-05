A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "39.2-[1]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-7*x^16 - 122*x^15 - 1019*x^14 - 5476*x^13 - 21358*x^12 - 64170*x^11 - 
153140*x^10 - 294928*x^9 - 461947*x^8 - 589856*x^7 - 612560*x^6 - 513360*x^5 - 
341728*x^4 - 175232*x^3 - 65216*x^2 - 15616*x - y^2 - 1792
]);
s`ShimGenus :=  7;

return s;
