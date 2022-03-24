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
