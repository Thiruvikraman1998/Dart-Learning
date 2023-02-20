import 'dart:io';

//  Maps in Dart

void main() {
  var student = {'name': 'Raj', 'age': 23, 'height': 5.5, 'haircolor': "Black"};
  print(student);

  // Maps are key: value pairs which holds values for every key. in the above example name, age, height and haircolor are the keys for student. and the values asignes are the values for the key.

  student['gender'] =
      'male'; // Adds new key: value pair to the end. (here gender is the key)

  student['name'] =
      'Rajesh'; // Edits the current value and adds new value to the key.(name is the key)

  print(student);
}
