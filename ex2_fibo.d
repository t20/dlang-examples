import std.stdio;

int fib(int n) {
  if (n == 0 || n == 1)
     return n;
  else return fib(n-1) + fib(n-2);
}

void main() {
  writeln(fib(6));
}

