// list of search cols
// <name, type, function, needs inds and lmfdb_index>
// TODO: third entries are functions that need to be written
column_handler := [*
  <"label", "text", ShimuraLabel>, //TODO
  <"disc", "integer", DiscSt>, //TODO
  <"genus", "smallint", GenusSt>, //TODO
  //<"index", "smallint", >, //TODO // don't see ShimIndex attribute in ShimDB
  //<"rank", "integer", >, //TODO // don't see ShimIndex attribute in ShimDB
  //<"gonality", "integer", >, //TODO // don't see ShimIndex attribute in ShimDB
  <"model", "text", ModelSt>, //TODO
  //<"atkin_lehner", "?", >, //TODO
*];


intrinsic ShimDBToLMFDBrow(s::ShimDB) -> MonStgElt
  {return string containing one row of data}
  shim_attrs := [fn[3](s) : fn in column_handler];
  return Join(shim_attrs, "|");
end intrinsic;

// this is the top-level function
intrinsic ShimDBToLMFDB(filename::MonStgElt, seq::SeqEnum[ShimDB]) -> Any 
  {return string containing one row of data per map}
  headers := [[col[1] : col in column_handler]];
  headers cat:= [[col[2] : col in column_handler]];
  headers cat:= [[]];
  return putrecs(filename, headers cat [ShimDBToLMFDBrow(s) : s in seq]);
end intrinsic;

// to generate new data table
intrinsic GenerateShimuraData(galmaps_filename::MonStgElt, passports_filename : DegreeBound := 9) -> Any
  {Given a filename, generate a text file of the data of all Galois orbits Belyi maps of degree up to DegreeBound.}

  names := [];
  for d := 1 to DegreeBound do
    names cat:= BelyiDBFilenames(d);
  end for;
  printf "%o BelyiDB filenames found\n", #names;
  print "Loading Belyi maps...";
  t0 := Cputime();
  db := [];
  for name in names do
    s := BelyiDBRead(name);
    if BelyiMapIsComputed(s) then // only BelyiDBs with all data computed
      Append(~db, s);
    end if;
  end for;
  t1 := Cputime();
  printf "...done. That took %o seconds.\n", t1 - t0;
  BelyiDBToLMFDB(galmaps_filename, db);
  BelyiDBPassportToLMFDB(passports_filename, db);
  galmaps_str := Sprintf("Galmap data written to %o\n", galmaps_filename);
  passports_str := Sprintf("Passport data written to %o\n", passports_filename);
  return galmaps_str, passports_str;
end intrinsic;

