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

s`ShimLabel := "82.1-[1,41]";

s`ShimDiscriminant :=  82;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 41 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,27*X^2 + 1024*Y^2 + 17424*X*T + 2817216*T^2); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
16*x[1]^4 - 32*x[1]^3 + 1032*x[1]^2 + 1576*x[1] - x[2]^2 + 1549,
-3*x[1]^2 - x[3]^2 - 6
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
9153/2048*x[2]^3*x[3]^4 - 3764799/4096*x[2]^3*x[3]^2 - 49346739/32768*x[2]^3 - 945/128*x[2]*x[3]^8 + 405243/128*x[2]*x[3]^6 - 282429423/1024*x[2]*x[3]^4 + 3244719951/2048*x[2]*x[3]^2 + 447924893031/32768*x[2],
-243/16384*x[2]^3*x[3]^5 + 88209/32768*x[2]^3*x[3]^3 + 986337/262144*x[2]^3*x[3] + 27/1024*x[2]*x[3]^9 - 10125/1024*x[2]*x[3]^7 + 6193341/8192*x[2]*x[3]^5 - 92327121/16384*x[2]*x[3]^3 - 11319472413/262144*x[2]*x[3],
-243/16384*x[2]^3*x[3]^4 + 88209/32768*x[2]^3*x[3]^2 + 986337/262144*x[2]^3 + 27/1024*x[2]*x[3]^8 - 10125/1024*x[2]*x[3]^6 + 6193341/8192*x[2]*x[3]^4 - 92327121/16384*x[2]*x[3]^2 - 11319472413/262144*x[2]
] >;
s`ShimRationalPoints := false;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := false;

return s;

