//Take a list and write a program that prints out all the elements of the list that are less than 5.

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for (int elements in a) {
    if (elements < 5) {
      print(elements);
    }
  }
}
