void main() {
  final oldNames = {'name': 'john', 'age': 25, 'gender': 'male'};

  for (final names in oldNames.entries) {
    print(names.key);
  }
}
