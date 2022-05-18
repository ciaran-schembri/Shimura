
intrinsic ShimDBRead(filename::MonStgElt) -> Any
  {read in filename and output the database object}
  file:=Sprintf("ShimDB/%o",filename);
  FP:=Read(file);
  attr:=eval FP;
  return attr;
end intrinsic;


intrinsic ShimDBRecord(D::RngIntElt,N::RngIntElt,W::SeqEnum) -> Any
  {Input: discriminant D, level N, atkin-lehners W
  output: the record associated to X(D,N)/W}

  filenames:=ShimDBFilenames();
  for filename in filenames do
    if Sprintf("%o,%o",D,N) in filename and sprint(W) in filename then
      return ShimDBRead(filename);
    end if;
  end for;
end intrinsic;


intrinsic ShimDBFilenames() -> SeqEnum
  {get all filenames}
  command := Sprintf("ls %o", "ShimDB");
  ls := Pipe(command, "");
  filenames := Split(ls, "\n");
  return filenames;
end intrinsic;
