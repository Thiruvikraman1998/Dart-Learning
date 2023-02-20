import 'dart:io';
// Streams in Dart

Stream<String> getName() {
  return Stream.periodic(const Duration(milliseconds: 5), (name) {
    return "Vikram"; // return vikram is asigned to (name).
  });
}

// Unlike future the stream passes the value every one second hence it is called streams.
void main() async {
  await for (final name in getName()) {
    // waiting for name in getName() here the value of name is vikram.
    print(
        name); // Thus it gets the value of name and prints it according to the period of duration.
  }
  print("Stream finished successfully");
}
