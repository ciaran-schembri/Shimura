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

s`ShimLabel := "57.1-[1,19]";

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 19 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,256*X^2 + 8100*Y^2 + 11392*X*T + 132811*T^2); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^4 + 36*x[1]^3 + 62*x[1]^2 + 20*x[1] - x[2]^2 + 1,
-4*x[1]^2 + 2*x[1] - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-34816/18225*x[2]^3*x[3]^4 - 6201664/164025*x[2]^3*x[3]^2 - 657248/164025*x[2]^3 + 5776/2025*x[2]*x[3]^8 - 506392/18225*x[2]*x[3]^6 - 39031012/32805*x[2]*x[3]^4 + 145692988/164025*x[2]*x[3]^2 + 176991802/164025*x[2],
-1024/18225*x[2]^3*x[3]^5 + 364544/164025*x[2]^3*x[3]^3 + 107008/164025*x[2]^3*x[3] + 64/2025*x[2]*x[3]^9 - 103168/18225*x[2]*x[3]^7 + 487936/6561*x[2]*x[3]^5 - 1979648/164025*x[2]*x[3]^3 - 6942752/164025*x[2]*x[3],
-1024/18225*x[2]^3*x[3]^4 + 364544/164025*x[2]^3*x[3]^2 + 107008/164025*x[2]^3 + 64/2025*x[2]*x[3]^8 - 103168/18225*x[2]*x[3]^6 + 487936/6561*x[2]*x[3]^4 - 1979648/164025*x[2]*x[3]^2 - 6942752/164025*x[2]
] >;
s`ShimRationalPoints := false;

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "NA";

s`ShimPointsEverywhereLocally := false;

return s;

