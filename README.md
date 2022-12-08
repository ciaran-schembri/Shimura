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
* D - is the discriminant of the quaternion algebra;
* N - is the level;
* g? - is the genus of the curve;
* W - is a list of numbers representing the group of Atkin-Lehner involutions.

To interact with the database you will need to have [Magma](http://magma.maths.usyd.edu.au/magma/) installed. Then you can clone the repository.

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

Each curve/file has a record which holds information about the curve, the attribute names of the record are
```
ShimLabel
ShimDiscriminant
ShimLevel
ShimAtkinLehner
ShimGenus
ShimModel
ShimTopCurve
ShimProjectionEquations
ShimRationalPoints
ShimPointsProvedCorrect
ShimPointsNotes
ShimPointsEverywhereLocally
```

One can also load the record associated to a curve from the filename using
```
s:=ShimDBRead(filename);
```

To load all filenames or records in the database use
ShimDBFilenames() or
ShimDBRecords() respectively.

As an example, to see all Hasse principle violations we can do
```
filenames:=ShimDBFilenames();
for file in filenames do
  s:=ShimDBRead(file);
  if s`ShimAtkinLehner ne [1] and Type(s`ShimRationalPoints) eq SetEnum then
    if s`ShimRationalPoints eq {} and s`ShimPointsEverywhereLocally eq true then
      file;
    end if;
  end if;
end for;
```
and the output is
Shim-X(87,1)-g2-[1,3].m,
Shim-X(93,1)-g3-[1,3].m,
Shim-X(119,1)-g4-[1,7].m,
Shim-X(6,29)-g2-[1,6].m,
Shim-X(6,37)-g2-[1,3].m,
Shim-X(39,2)-g3-[1,78].m.

Authors
--

* Oana Padurariu
* Ciaran Schembri
