
intrinsic ShimAddAttributes(filename::MonStgElt, attributes::SeqEnum) -> Any
  {Take the filename of a curve as input, duplicate the file in version 1 of the database
  and make a new copy in version 2. Then the intrinsic writes the new attributes into the
  new file in version 2. The attributes are of the form [<Shim, data>],
  with "Shim" the name of the attribute and "data" the attribute as a string.}
  file:=Sprintf("ShimDB-v1/%o",filename);

  new_file:=Sprintf("ShimDB-v2/%o",filename);
  r:=Open(file,"r");

  while true do
    line :=Gets(r);
    if IsEof(line) then
      break;
    end if;

    if "Shim" in line and "," notin line and "s`" notin line then
      Write(new_file,Sprintf("%o,", line));
      for i in [1..#attributes] do
        attr:=attributes[i];
        if i ne #attributes and #attributes gt 1 then
          Write(new_file,Sprintf(" %o,",attr[1]));
        else
          Write(new_file,Sprintf(" %o",attr[1]));
        end if;
      end for;
    elif line eq "return s;" then
      for attr in attributes do
        Write(new_file,Sprintf("s`%o := %o;\n",attr[1],attr[2]));
      end for;
      Write(new_file,line);
    else
      Write(new_file,line);
    end if;
  end while;

  return "";

end intrinsic;
