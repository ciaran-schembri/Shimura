A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimDiscriminant, ShimLevel,
  ShimEquation, ShimGenus >;
s := rec< RF | >;
s`ShimDiscriminant :=  119;
s`ShimLevel :=  1;
s`ShimEquation :=  [
-7*x^20 + 150*x^18 - 427*x^16 - 3192*x^14 + 10114*x^12 - 255164*x^10 - 
1307614*x^8 - 2945912*x^6 - 3649275*x^4 - 2559466*x^2 - y^2 - 823543
];
s`ShimGenus :=  9;

return s;