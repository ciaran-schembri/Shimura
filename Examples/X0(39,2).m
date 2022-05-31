_<x> := PolynomialRing(Rationals());
f := - (x^8 + 11*x^7+52*x^6+140*x^5+243*x^4+280*x^3 + 208*x^2+88*x+16)*(7*x^4+24*x^3+32*x^2+24*x+16)*(x^4+3*x^3+8*x^2+12*x+7);
C := HyperellipticCurve(f);
assert BadPrimes(C) eq  [2, 3, 13 ];
F<x,y> := FunctionField(C);
w2 := iso< C -> C |[2/x,-16*y/x^8,1],[2/x,-16*y/x^8,1]>;
w3 := iso< C -> C |[-(x+2)/(x+1),-y/(x+1)^8,1],[-(x+2)/(x+1),-y/(x+1)^8,1]>;
w39 := iso< C -> C | [x,-y,1],[x,-y,1]>; //hyperelliptic involution
w6 := w2*w3;
w13 := w3*w39;
w78 := w39*w2;
w26 := w2*w13;



//G:= AutomorphismGroup(C,[w6,w13,w78]);
//HyperellipticInvolution(C) in G; //false
//X,m := CurveQuotient(G); //fails


G:= AutomorphismGroup(C,[w2,w13]);
X,m := CurveQuotient(G);

G1:= AutomorphismGroup(C,[w13]);
Q1,m1 := CurveQuotient(G1);

#Automorphisms(Q1); //4


F<x,y> := FunctionField(Q1);

auts := Automorphisms(Q1);

//first possibility

G2 := AutomorphismGroup(Q1,[auts[3]]);
Q2,m2 := CurveQuotient(G2); //genus 1
E,mE := EllipticCurve(Q2,Points(Q2 : Bound:=100)[1]);
MinimalModel(E);

//second possibility
G2 := AutomorphismGroup(Q1,[auts[4]]);
Q2,m2 := CurveQuotient(G2); //genus 2
//IsIsomorphic(X,Q2); //true, so this cannot be the right quotient