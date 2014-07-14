import std.stdio;

int[] merge_sort(int[] a){
  if (a.length <= 1)
    return a;
  long n = a.length;
  long l = a.length / 2;
  int[] left = a[0..l];
  int[] right = a[l..n];
  int[] sorted_left = merge_sort(left);
  int[] sorted_right = merge_sort(right);
  //writeln("Sorted left input with length: ", sorted_left);
  //writeln("Sorted left input with length: ", sorted_right);
  return merge(sorted_left, sorted_right);
}

int[] merge(int[] a, int[] b) {

  long i = a.length;
  long j = b.length;
  int[] r;
  r.length = i + j;
  int counter = 0;
  int x = 0;
  int y = 0;

  while (x < i && y < j) {
    if (a[x] > b[y]){
      r[counter] = a[x];
      x++;
      counter++;
    } else {
      r[counter] = b[y];
      y++;
      counter++;
    }
  }

  for (long z = x; z <  i; z++){
    r[counter] = a[z];
    counter++;
  }
  for (long z = y; z < j; z++){
    r[counter] = b[z];
    counter++;
  }

  return r;
}

void main() {
  int[10] a = [11, 6, 2, 18, 10, 0, -3, 2, 1, 7];
  a = merge_sort(a);
  writeln("Sorted set a: ", a);
}

