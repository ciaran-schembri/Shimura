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

s`ShimLabel := "22.3-[1,22]";

s`ShimDiscriminant :=  22;
s`ShimLevel :=  3;
s`ShimAtkinLehner :=  [ 1, 22 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 2, 10, 7, -26, -15, 33, -11]), Polynomial([RationalField() | 1, 1, 1])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -27, 0, -308, 0, -2146, 0, -308, 0, -27]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-1/8*x[1]^2*x[3]^4 - 3/8*x[3]^6,
-3/512*x[1]^6*x[3]^12 + 9/512*x[1]^4*x[3]^14 - 25/512*x[1]^2*x[3]^16 - 1/128*x[1]*x[2]*x[3]^13 + 19/512*x[3]^18,
1/4*x[1]^2*x[3]^4 - 1/4*x[3]^6
] >;
s`ShimRationalPoints := {
[ 0, -2, 1 ],
[ 1, 0, 1 ],
[ 1, -3, 1 ],
[ 3, -19, 2 ],
[ 0, 1, 1 ],
[ -1, -3, 2 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

