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

s`ShimLabel := "93.1-[1,93]";

s`ShimDiscriminant :=  93;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 93 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 0, -2, 1, 1]), Polynomial([RationalField() | 1, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^6 - 18*x[1]^5 - 25*x[1]^4 - 12*x[1]^3 + 71*x[1]^2 + 30*x[1] - x[2]^2 + 9,
-4*x[1]^2 - 6*x[1] - x[3]^2 - 9
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/234*x[2]^2 - 1/1664*x[3]^6 - 59/7488*x[3]^4 + 359/7488*x[3]^2 - 155/1664,
-1/2555904*x[2]^2*x[3]^10 - 131/49840128*x[2]^2*x[3]^8 - 2209/323960832*x[2]^2*x[3]^6 + 7103/161980416*x[2]^2*x[3]^4 + 2573/10123776*x[2]^2*x[3]^2 + 6727/10123776*x[2]^2 - 1/524288*x[2]*x[3]^12 - 111/3407872*x[2]*x[3]^10 - 6525/22151168*x[2]*x[3]^8 - 229585/143982592*x[2]*x[3]^6 - 202275/35995648*x[2]*x[3]^4 - 106671/8998912*x[2]*x[3]^2 - 29791/2249728*x[2] - 3/54525952*x[3]^16 - 2827/2126512128*x[3]^14 - 2096227/82933972992*x[3]^12 - 765965/2126512128*x[3]^10 - 129362507/41466986496*x[3]^8 - 119730743/6911164416*x[3]^6 - 626707687/10366746624*x[3]^4 - 20499091/161980416*x[3]^2 - 8847927/71991296,
-1/234*x[2]^2 - 1/1664*x[3]^6 + 175/7488*x[3]^4 + 1691/7488*x[3]^2 + 837/1664
] >;
s`ShimRationalPoints := {
[ -2, 0, 1 ],
[ 1, 0, 1 ],
[ 1, 0, 0 ],
[ -1, -1, 1 ],
[ -1, 2, 1 ],
[ 4, -135, 3 ],
[ 1, -1, 0 ],
[ -2, 9, 1 ],
[ 1, -5, 2 ],
[ 4, 8, 3 ],
[ 1, -3, 1 ],
[ 0, -1, 1 ],
[ 0, 0, 1 ],
[ 1, -8, 2 ]
};

s`ShimPointsProvedCorrect := false;

s`ShimPointsNotes := "inconclusive";

s`ShimPointsEverywhereLocally := true;

return s;

