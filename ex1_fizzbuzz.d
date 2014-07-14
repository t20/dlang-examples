import std.stdio;

void fizzbuzz(int n) {
  for (int i=1; i < n; i++){
    if (i % 15 == 0)
      writeln("fizzbuzz");
    else if (i % 3 == 0)
      writeln("fizz");
    else if (i % 5 == 0)
      writeln("buzz");
    else
      writeln(i);
  }
}

void main() {
  // writeln("Hello World!");
  fizzbuzz(100);
}

