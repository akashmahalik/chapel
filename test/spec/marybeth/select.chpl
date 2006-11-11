const D = [1..5];
var A: [D] real;

[i in D] A(i) = i:real;

writeln(getvalue("first",A));
writeln(getvalue("last",A));
writeln(getvalue("middle",A));

def getvalue(pos:string,y) {
  var x = 0.0;
  select pos {
    when "first" do x = y(1);
    when "last" do x = y(y.numElements);
    when "middle" do x = y((y.numElements/2):int + y.numElements%2);
    otherwise writeln("Unrecognized element position");
  }
  return x;
}
