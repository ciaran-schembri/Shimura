
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
      return ShimDBRead(filename);
    end if;
  end for;
end intrinsic;


intrinsic ShimDBFilenames( : version:=2) -> SeqEnum
  {get all filenames}
  command := Sprintf("ls %o-v%o", "ShimDB",version);
  ls := Pipe(command, "");
  filenames := Split(ls, "\n");
  return filenames;
end intrinsic;
