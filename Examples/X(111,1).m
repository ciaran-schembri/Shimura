
AttachSpec("spec");

C:=ShimuraCurveQuotient(111,1,[1,3]);
a,b,c:=IsGeometricallyHyperelliptic(C);

s:=ShimDBRead("Shim-X(10,13)-g1-[1,10].m");
C:=s`ShimModel;


//For this curve the hyperelliptic involution of
//X(10,13) is w65 which is y -> -y. Is this the same
// on X(10,13)/<w_10>?
F<X,Y,Z,T>:=FunctionField(C);
iso< C -> C | [X,-Y,Z,T], [X,-Y,Z,T] >;
