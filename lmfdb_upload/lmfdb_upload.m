// list of search cols
// <name, type, function, needs inds and lmfdb_index>
// TODO: third entries are functions that need to be written
column_handler := [*
  <"label", "text", ShimuraLabel>,
  <"disc", "integer", DiscSt>,
  <"level", "integer", LevelSt>,
  <"genus", "smallint", GenusSt>,
  //<"index", "smallint", >, //TODO // don't see ShimIndex attribute in ShimDB
  //<"rank", "integer", >, //TODO // don't see ShimIndex attribute in ShimDB
  //<"gonality", "integer", >, //TODO // don't see ShimIndex attribute in ShimDB
  <"model", "text", ModelSt>,
  <"atkin_lehner", "integer[]", AtkinLehnerSt>
*];

intrinsic ShimDBToLMFDBrow(s::Rec) -> MonStgElt
  {return string containing one row of data}
  shim_attrs := [fn[3](s) : fn in column_handler];
  return Join(shim_attrs, "|");
end intrinsic;

// this is the top-level function
intrinsic ShimDBToLMFDB(filename::MonStgElt, seq::SeqEnum[Rec]) -> Any
  {return string containing one row of data per map}
  headers := [[col[1] : col in column_handler]];
  headers cat:= [[col[2] : col in column_handler]];
  headers cat:= [[]];
  for s in seq do
    Append(~headers,[ShimDBToLMFDBrow(s)] );
  end for;
  return putrecs(filename, headers);
end intrinsic;

// to generate new data table
intrinsic GenerateShimuraData(filename::MonStgElt) -> Any
  {Given a filename, generate a text file of the data of all Shimura curves in ShimDB.}

  names := ShimDBFilenames();
  printf "%o ShimDB filenames found\n", #names;
  print "Loading Shimura curves...";
  t0 := Cputime();
  db := [];
  for name in names do
    s := ShimDBRead(name);
    Append(~db, s);
  end for;
  t1 := Cputime();
  printf "...done. That took %o seconds.\n", t1 - t0;
  ShimDBToLMFDB(filename, db);
  shimura_str := Sprintf("Shimura data written to %o\n", filename);
  return shimura_str;
end intrinsic;
