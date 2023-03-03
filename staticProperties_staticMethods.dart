// dart staticProperties_staticMethods.dart

// static keyword is used when the propery name should not be changed dynamically or by the others.

class Person {
  static String? name = '';
  // The name we asign to the static property will not be changed by other, (eg) we cannot change or assign the value of the name by creating an object and so on.
}

void main() {
  Person.name = "Raj";
  print(Person.name);
  Person.name = "Ram";
  print(Person.name);
}
