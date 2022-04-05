A2<x,y>:=AffineSpace(Rationals(),2);

RF := recformat< n : Integers(), ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel
 >;
s := rec< RF | >;
s`ShimLabel := "6.37-[1]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  37;
s`ShimAtkinLehner := [1];
s`ShimModel := Curve(A2,[
-4096*x^12 - 18480*x^10 - 40200*x^8 - 51595*x^6 - 40200*x^4 - 18480*x^2 - y^2 - 
4096
]);
s`ShimGenus :=  5;

return s;
