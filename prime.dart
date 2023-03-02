void main() {
  List<int> a = List.generate((10), (i) => i + 1); //i+1 starts list form 1.
  List<int> b = [];
  print(a);
  for (int i = 1; i <= a.length; i++) {
    for (int j = i; j <= a[i]; j++) {
      if (a[i] % j == 0) {
        b.add(a[i]);
      }
    }
  }
  print(b);
}
