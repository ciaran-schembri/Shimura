
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

  //DNatkinlehners:= [  (eval Sprintf("[ %o ]",Split(Split(file,"(")[2],")")[1])) cat (eval Split(Split(file,"-")[4],".")[1]) : file in filenames ];

  sort_files:=function(file1,file2);
    A:=(eval Sprintf("[ %o ]",Split(Split(file1,"(")[2],")")[1])) cat (eval Split(Split(file1,"-")[4],".")[1]);
    B:=(eval Sprintf("[ %o ]",Split(Split(file2,"(")[2],")")[1])) cat (eval Split(Split(file2,"-")[4],".")[1]);
    if A[2] eq 1 and B[2] ne 1 then
      return -1;
    elif B[2] eq 1 and A[2] ne 1 then
      return 1;
    end if;

    if A[1] lt B[1] then
      return -1;
    elif A[1] gt B[1] then
      return 1;
    end if;

    if A[1] eq B[1] and A[2] ne B[2] then
      return A[2] - B[2];
    end if;

    C:=[ A[i] : i in [3..#A] ];
    D:=[ B[i] : i in [3..#B] ];

    if #C lt #D then
      return -1;
    elif #D lt #C then
      return 1;
    end if;

    as:=[ i : i in [1..#C] | C[i] ne D[i] ];
    if C[as[1]] gt D[as[1]] then
      return 1;
    else
      return -1;
    end if;

  end function;

  Sort(~filenames,sort_files);

  return filenames;
end intrinsic;

intrinsic ShimDBFilename(D::RngIntElt,N::RngIntElt,W::SeqEnum :version:=2) -> Any
  {return the filename associated to D, N and W}
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
  {Given a database object from version 1, compute the set of rational points
  on the curve and create a new database object in version 2 including the
  set of rational points.}

  filename:=ShimDBFilename(D,N,W :version:=1);
  attr:=ShimDBRead(filename : version:=1);

  if attr`ShimAtkinLehner ne [1] then
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

    new_attributes:=
    [
    <"ShimRationalPoints", Sprint(points)>,
    <"ShimPointsProvedCorrect", Sprint(ShimPointsProvedCorrect)>,
    <"ShimPointsNotes", Sprintf("\"%o\"",ShimPointsNotes)>,
    <"ShimPointsEverywhereLocally", Sprint(ShimPointsEverywhereLocally)>
    ];
    ShimAddAttributes(filename, new_attributes);
  else
    new_attributes := [
      <"ShimRationalPoints","{}">,
      <"ShimPointsProvedCorrect", "true">,
      <"ShimPointsNotes", "\"NA\"">,
      <"ShimPointsEverywhereLocally", "\"NA\"">
       ];
    ShimAddAttributes(filename, new_attributes);
  end if;

return "";

end intrinsic;
