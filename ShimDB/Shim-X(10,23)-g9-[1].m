A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "10.23-[1]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  23;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-43*x^20 + 318*x^19 - 1071*x^18 + 3014*x^17 - 10540*x^16 + 28266*x^15 - 
72217*x^14 + 81478*x^13 - 62765*x^12 - 68732*x^11 + 18840*x^10 + 68732*x^9 - 
62765*x^8 - 81478*x^7 - 72217*x^6 - 28266*x^5 - 10540*x^4 - 3014*x^3 - 1071*x^2 
- 318*x - y^2 - 43
]);
s`ShimGenus :=  9;

return s;
