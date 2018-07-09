pragma "use default init"
record bar {
  var aField: int;
}

inline proc _defaultOf(type t:bar) {
  var res: t = noinit;
  res.aField = 4;
  return res;
}

var foo: bar;
writeln(foo);
