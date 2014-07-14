import std.stdio;

int[] sort(int[] a) {
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < i; j++) {
      if (i == j)
        continue;
      if (a[i] < a[j]){
        int t = a[i];
        a[i] = a[j];
        a[j] = t;
      }
    }
  }
  return a;
}


void main() {
  int[10] a = [11, 6, 2, 18, 10, 0, -3, 2, 1, 7];
  int[] b = sort(a);
  writeln(b);
  
  int[10] x = [1, 17, 9, 0, -5, 5, 1, 3, 14, 2];
  x.sort;
  /*
  for (int i = 0; i < x.length; i++) {
    writeln(x[i]);
  }
  */

  writeln(x);
}

