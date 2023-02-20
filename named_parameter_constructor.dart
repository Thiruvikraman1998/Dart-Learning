class Staff {
  String? name;
  int? empid;
  int? age;

  Staff({this.name, this.age, this.empid});
    //adding {}before the constructor parameters are called named parameters. While we add {} we can give parameters for objects while asigning itself. or we can also asign values later like in lines 16-18. adding only "{}" and not giving 'required' just acts like a normal constructor.
    // but if we add required in the prefix of each parameters then we have to pass the arguments inside the class name in object itself. remove comment from the below example2 and check.

  void display() {
    print("the name is $name age is $age");
  }
}

void main() {
  Staff s1 = Staff(name: "Raj", age: 12, empid: 123);
  // s1.name = 'Raj';
  // s1.age = 20;
  // s1.empid = 123;
  s1.display();
}


//example 2

class Dog {
  String? name;
  int? id;
  int? age;

  Dog({required this.name, required this.age, required this.id});

    void display() {
    print("the name is $name age is $age");
  }
}

// void main(){
//     Dog d1 = Dog(name: "Tommy", age: 5, id: 123);
//     d1.display();

//     //Whenever we use named parameter in the constructor, we have to pass the property name inside the class argument before we asigning the values like the above case.
// }
    