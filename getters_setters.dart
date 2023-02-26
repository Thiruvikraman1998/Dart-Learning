// void main(){dart
//      var person1 = Person(firstName: 'Raj', lastName: 'Kumar');
//     print(person1.fullName);
// }

// class Person {
//     final String firstName;
//     final String lastName;
//      String get fullName => '$firstName $lastName';

//     const Person({required this.firstName, required this.lastName});
// }

class Class {
  int? x;
    
  int get someVal => x! * 2; // getter.
    
  set someVal(int val) => x = val + 2; // setter.
}

void main() {
  Class c = Class();
  c.someVal = 12; // assigning for setter
  print(c.someVal); //calling getter
}
