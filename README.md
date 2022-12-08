Description
--

This repository is a database of Shimura curves and their Atkin-Lehner quotients
which is an accompaniment to arXiv.

The database contains defining equations for all Atkin-Lehner quotients of Shimura curves X_0(D,N) which are geometrically hyperelliptic. Furthermore, the
set of rational points on the quotient curves is included when finite and a description is given when infinite.  

A file for each quotient curve can be found in the folder ShimDB-v2
The name of each file will be of the form
Shim-X(D,N)-g?-W.m
where
D - is the discriminant of the quaternion algebra;
N - is the level;
g? - is the genus of the curve;
W - is a list of numbers representing the group of Atkin-Lehner involutions.

To interact with the database you will need to have Magma](http://magma.maths.usyd.edu.au/magma/) installed. Then you can clone the repository.

Usage
--

Once the repository has been cloned, to use the database first do
```
AttachSpec("spec");
```

To load the data associated to the curve X_0(D,N)/W;
```
s:=ShimDBRecord(D,N,W);
```

Each curve/file has a record which holds information about the curve, the attributes of the record are
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
