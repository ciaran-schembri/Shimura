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

s`ShimLabel := "15.2-[1,5]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 12, 24, -37, -1, 5, -3]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^3 + x[3]^5,
-x[1]*x[2]*x[3]^10,
x[3]^5
] >;
s`ShimRationalPoints := {
[ 1, 0, 1 ],
[ 1, 0, 0 ],
[ -2, 0, 1 ],
[ -1, 0, 3 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

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

s`ShimLabel := "15.2-[1,5]";

s`ShimDiscriminant :=  15;
s`ShimLevel :=  2;
s`ShimAtkinLehner :=  [ 1, 5 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | 12, 24, -37, -1, 5, -3]), Polynomial([RationalField() |])]);
s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -48, 0, -40, 0, -11, 0, -10, 0, -3]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2*x[3]^3 + x[3]^5,
-x[1]*x[2]*x[3]^10,
x[3]^5
] >;
s`ShimRationalPoints := {
[ 1, 0, 1 ],
[ 1, 0, 0 ],
[ -2, 0, 1 ],
[ -1, 0, 3 ]
};

s`ShimPointsProvedCorrect := true;

s`ShimPointsNotes := "Used Magma's Chabauty0()";

s`ShimPointsEverywhereLocally := true;

return s;

