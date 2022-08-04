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

s`ShimLabel := "93.1-[1,3,31,93]";

s`ShimDiscriminant :=  93;
s`ShimLevel :=  1;
s`ShimAtkinLehner :=  [ 1, 3, 31, 93 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,X^2 + 1521/64*X*Y + 583/64*X*T + 255295/4096*T^2); 

AS<[x]> := AffineSpace(RationalField(), 3);
s`ShimTopCurve:=Curve(AS, [
9*x[1]^6 - 18*x[1]^5 - 25*x[1]^4 - 12*x[1]^3 + 71*x[1]^2 + 30*x[1] - x[2]^2 + 9,
-4*x[1]^2 - 6*x[1] - x[3]^2 - 9
]);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
-152829952/187388721*x[2]^2 - 8617984/20820969*x[3]^6 + 115499008/62462907*x[3]^4 + 969072640/30074733*x[3]^2 + 191660748800/2436053373,
-9781116928/5315489280855*x[2]^2*x[3]^2 + 723802652672/69101360651115*x[2]^2 - 551550976/590609920095*x[3]^8 + 218539491328/23033786883705*x[3]^6 + 1127554220032/23033786883705*x[3]^4 - 42458005372928/179663537692899*x[3]^2 - 181541061263360/179663537692899,
16777216/3494733255*x[2]^2*x[3]^2 + 2975825133568/47839403527695*x[2]^2 + 262144/388303695*x[3]^8 - 37191417856/1063097856171*x[3]^6 - 44003618455552/47839403527695*x[3]^4 - 3404779183407104/621912245860035*x[3]^2 - 7240229047238656/621912245860035
] >;
return s;

