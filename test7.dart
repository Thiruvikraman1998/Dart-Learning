// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> b = [];
  // for (var n in a) {
  //   if (n % 2 == 0) {
  //     b.add(n);
  //   }
  // }
  // print(b);

  b = a.where((i) => i % 2 == 0).toList();
  print(b);
}
