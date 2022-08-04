Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations
>;
s := rec< RF | >;

s`ShimLabel := "57.1-[1,3]";

s`ShimDiscriminant :=  57;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3 ];
s`ShimGenus :=  2;

s`ShimModel := HyperellipticCurve([Polynomial([RationalField() | -1, -6, 12, -6, -13, 9, -2]), Polynomial([RationalField() | 0, 1, 0, 1])]);
AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^4 + 36*x[1]^3 + 62*x[1]^2 + 20*x[1] - x[2]^2 + 1,
-4*x[1]^2 + 2*x[1] - x[3]^2 - 1
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
1/180*x[2]^2 - 1/320*x[3]^4 + 311/2880*x[3]^2 + 19/180,
1/294912*x[2]^2*x[3]^6 - 157/4423680*x[2]^2*x[3]^4 + 30457/265420800*x[2]^2*x[3]^2 - 17689/165888000*x[2]^2 + 1/32768*x[2]*x[3]^7 - 133/327680*x[2]*x[3]^5 + 17689/9830400*x[2]*x[3]^3 - 2352637/884736000*x[2]*x[3] - 1/524288*x[3]^10 + 19/368640*x[3]^8 - 378931/1415577600*x[3]^6 + 1027273/21233664000*x[3]^4 + 22821337/21233664000*x[3]^2 + 20501551/21233664000,
1/360*x[2]^2 - 1/640*x[3]^4 + 131/5760*x[3]^2 + 551/2880
] >;
return s;

