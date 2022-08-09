AttachSpec("spec");
SetDebugOnError(true);
D:=86; N:=1; m:=43;

s:=ShimDBRecord(D,N,[1,m]);
R1:=CMOrder(4,1)[1];
R2:=CMOrder(4,2)[1];
K:=NumberField(R1);
X:=s`ShimModel;

assert #RingClassGroup(R1) eq 1;
assert #RingClassGroup(R2) eq 1;

assert CMPointsCardinality(R1,D,N) eq 2;
assert CMPointsCardinality(R2,D,N) eq 2;

assert IsInert(43*R1);
assert IsInert(43*R2);

proj:=s`ShimProjectionEquations;
pts:=s`ShimRationalPoints;
assert pts eq {[2,-3,1]};
p1:=PullbackPointsWithEquation(proj,[*Setseq(pts)[1]*]);

assert Eltseq(p1[1])[2]^2 eq -16;
QP:=Parent(Eltseq(p1[1])[2]);
IsSubfield(QP,K);
(K!Eltseq(p1[1])[2]);


XtopK:=ChangeRing(s`ShimTopCurve,K);
Points(XtopK : Bound:=10000);
