void main() {
  var person1 = Person(name: 'John', age: 20);
  print(person1.name);
  var raj = Person.raj();
  print(raj.name);

  var ram = Person.ram(30);
  print("Name is ${ram.name} and his age is ${ram.age}");

  var other = Person.other();
  print(other.name);
  print(other.age);
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

//constructor with initializer

  Person.raj()
      : name = "raj",
        age = 22;

  Person.ram(
    this.age,
  ) : name =
            'Ram'; // we can also pass parameters to the named constructor, where it takes name as Ram and takes age dynamically.

  //Lets say we want to print values from the constructor if it contains or else print default values check below example.

  Person.other({String? name, int? age})
      : name = name ?? "Other names",
        age = age ?? 30;

  //this prints if the values if the names parameters in the constructor has values or else it prints the default values given by the developer as othe names and the default age.
}
