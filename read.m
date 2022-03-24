
intrinsic ShimDBRead(filename::MonStgElt) -> Any
  {read in filename and output the database object}
  file:=Sprintf("ShimDB/%o",filename);
  FP:=Read(file);
  attr:=eval FP;
  return attr;
end intrinsic;


intrinsic ShimDBFilenames() -> SeqEnum
  {get all filenames}
  command := Sprintf("ls %o", "ShimDB");
  ls := Pipe(command, "");
  filenames := Split(ls, "\n");
  return filenames;
end intrinsic;
