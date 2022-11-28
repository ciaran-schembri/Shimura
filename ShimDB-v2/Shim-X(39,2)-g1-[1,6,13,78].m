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

s`ShimLabel := "39.2-[1,6,13,78]";

s`ShimDiscriminant :=  39;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 6, 13, 78 ];
s`ShimGenus :=  1;

P3<X,Y,Z,T>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(P3,[
Y^2 - X*Z,
-1/4*X^2 + 3/2*X*Y - 11/4*Y^2 + 3/2*Y*Z + 3/4*Z^2 + T^2
]);

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -1792, -15616, -65216, -175232, -341728, -513360, -612560, -589856, -461947, -294928, -153140, -64170, -21358, -5476, -1019, -122, -7]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
25/81*x[1]^8*x[3]^24 + 20/9*x[1]^7*x[3]^25 + 664/81*x[1]^6*x[3]^26 + 176/9*x[1]^5*x[3]^27 + 884/27*x[1]^4*x[3]^28 + 352/9*x[1]^3*x[3]^29 + 2656/81*x[1]^2*x[3]^30 + 160/9*x[1]*x[3]^31 + 400/81*x[3]^32,
10/81*x[1]^8*x[3]^24 + x[1]^7*x[3]^25 + 325/81*x[1]^6*x[3]^26 + 10*x[1]^5*x[3]^27 + 458/27*x[1]^4*x[3]^28 + 20*x[1]^3*x[3]^29 + 1300/81*x[1]^2*x[3]^30 + 8*x[1]*x[3]^31 + 160/81*x[3]^32,
4/81*x[1]^8*x[3]^24 + 4/9*x[1]^7*x[3]^25 + 157/81*x[1]^6*x[3]^26 + 46/9*x[1]^5*x[3]^27 + 239/27*x[1]^4*x[3]^28 + 92/9*x[1]^3*x[3]^29 + 628/81*x[1]^2*x[3]^30 + 32/9*x[1]*x[3]^31 + 64/81*x[3]^32,
1/54*x[2]*x[3]^24
] >;
s`ShimRationalPoints := {
[ -2, 0, 0, 1 ],
[ 2, 0, 0, 1 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "pullback of torsion";

s`ShimPointsEverywhereLocally := true;

return s;
