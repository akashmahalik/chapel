const D = [1..5];
var A: [D] real;

[i in D] A(i) = -i*i:real;

writeln(norm1(A));

def norm1(x) {
  var norm = 0.0;

  for i in x.domain {
    norm += abs(x(i));
  }
  return norm;
}
