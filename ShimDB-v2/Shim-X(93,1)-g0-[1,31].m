Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations,
 ShimRationalPoints,
 ShimPointsProvedCorrect,
 ShimPointsNotes,
 ShimPointsEverywhereLocally
>;
s := rec< RF | >;

s`ShimLabel := "93.1-[1,31]";

s`ShimDiscriminant :=  93;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 31 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,X^2 + 13689/177373*Y^2 + 37312/177373*X*T + 4096/177373*T^2); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^6 - 18*x[1]^5 - 25*x[1]^4 - 12*x[1]^3 + 71*x[1]^2 + 30*x[1] - x[2]^2 + 9,
-4*x[1]^2 - 6*x[1] - x[3]^2 - 9
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-5036032/123201*x[2]^3*x[3]^6 - 1045688320/1108809*x[2]^3*x[3]^4 - 6864490496/1108809*x[2]^3*x[3]^2 - 1653544960/123201*x[2]^3 - 176032/13689*x[2]*x[3]^12 - 4301984/123201*x[2]*x[3]^10 + 6720866144/1108809*x[2]*x[3]^8 + 98417789888/1108809*x[2]*x[3]^6 + 578995908224/1108809*x[2]*x[3]^4 + 177462002816/123201*x[2]*x[3]^2 + 19613840864/13689*x[2],
5036032/123201*x[2]^3*x[3]^7 + 1045688320/1108809*x[2]^3*x[3]^5 + 6864490496/1108809*x[2]^3*x[3]^3 + 1653544960/123201*x[2]^3*x[3] + 176032/13689*x[2]*x[3]^13 + 4301984/123201*x[2]*x[3]^11 - 6720866144/1108809*x[2]*x[3]^9 - 98417789888/1108809*x[2]*x[3]^7 - 578995908224/1108809*x[2]*x[3]^5 - 177462002816/123201*x[2]*x[3]^3 - 19613840864/13689*x[2]*x[3],
64/9*x[2]^3*x[3]^8 + 28851200/123201*x[2]^3*x[3]^6 + 3545279648/1108809*x[2]^3*x[3]^4 + 22297452352/1108809*x[2]^3*x[3]^2 + 6968876384/123201*x[2]^3 + x[2]*x[3]^14 - 2838539/27378*x[2]*x[3]^12 - 665817401/123201*x[2]*x[3]^10 - 104787196129/1108809*x[2]*x[3]^8 - 911093385802/1108809*x[2]*x[3]^6 - 4452739705615/1108809*x[2]*x[3]^4 - 1327571029675/123201*x[2]*x[3]^2 - 324271305359/27378*x[2]
] >;
s`ShimRationalPoints := false;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := false;

return s;

