
intrinsic ShimDBRead(filename::MonStgElt : version:=2) -> Any
  {read in filename and output the database object}
  file:=Sprintf("ShimDB-v%o/%o",version,filename);
  FP:=Read(file);
  attr:=eval FP;
  return attr;
end intrinsic;


intrinsic ShimDBRecord(D::RngIntElt,N::RngIntElt,W::SeqEnum : version:=2) -> Any
  {Input: discriminant D, level N, atkin-lehners W
  output: the record associated to X(D,N)/W}

  filenames:=ShimDBFilenames( : version:=version);
  for filename in filenames do
    if Sprintf("%o,%o",D,N) in filename and sprint(W) in filename then
      return ShimDBRead(filename : version:=version);
    end if;
  end for;
end intrinsic;


intrinsic ShimDBFilenames( : version:=2) -> SeqEnum
  {get all filenames}
  command := Sprintf("ls %o-v%o", "ShimDB",version);
  ls := Pipe(command, "");
  filenames := Split(ls, "\n");

  atkinlehners:= [  (eval Sprintf("[ %o ]",Split(Split(file,"(")[2],")")[1])) cat (eval Split(Split(file,"-")[4],".")[1]) : file in filenames ];
  ParallelSort(~atkinlehners, ~filenames);

  return filenames;
end intrinsic;

intrinsic ShimDBFilename(D::RngIntElt,N::RngIntElt,W::SeqEnum :version:=2) -> Any
  {}
  list:=ShimDBFilenames( :version:=version);
  for L in list do
    s:=ShimDBRead(L : version:=version);
    if s`ShimDiscriminant eq D and s`ShimLevel eq N and
      s`ShimAtkinLehner eq W then
      return L;
    end if;
  end for;
end intrinsic;


intrinsic ShimDBWrite(D::RngIntElt,N::RngIntElt,W::SeqEnum) -> Any
 {}

filename:=ShimDBFilename(D,N,W :version:=1);
attr:=ShimDBRead(filename : version:=1);

if attr`ShimAtkinLehner ne [1] then
//new_attributes:= [ <"ShimRationalPoints","\"{}\"">, <"ShimTest", "\"NA\""> ];
  X:=attr`ShimModel;
  ShimRationalPoints, ShimPointsProvedCorrect, ShimPointsNotes := RationalPointsAnyGenus(X);
  ShimPointsEverywhereLocally:= HasAdelicPointsAnyGenus(X);
  if Type(ShimRationalPoints) eq SetEnum then
    points:=Set([ Eltseq(P) : P in ShimRationalPoints]);
  elif Type(ShimRationalPoints) eq MonStgElt then
    points:=Sprintf("\"%o\"",ShimRationalPoints);
  else
    assert Type(ShimRationalPoints) eq BoolElt;
    assert Genus(X) eq 0;
    points:=ShimRationalPoints;
  end if;

  //if Genus(X) ge 2 then
    //ShimRationalPoints:= Sprintf("s`ShimModel!%o", ShimRationalPoints);
  new_attributes:=
  [
  <"ShimRationalPoints", Sprint(points)>,
  <"ShimPointsProvedCorrect", Sprint(ShimPointsProvedCorrect)>,
  <"ShimPointsNotes", Sprintf("\"%o\"",ShimPointsNotes)>,
  <"ShimPointsEverywhereLocally", Sprint(ShimPointsEverywhereLocally)>
  ];
  ShimAddAttributes(filename, new_attributes);
end if;

return "";

end intrinsic;
