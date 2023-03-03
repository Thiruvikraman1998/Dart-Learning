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

// class Class {
//   int? x;

//   int get someVal => x! * 2; // getter.

//   set someVal(int val) {
//        x = val + 2;
//   } // setter.
// }

// void main() {
//   Class c = Class();
//   c.someVal = 12; // assigning for setter
//   print(c.someVal); //calling getter
// }

// another example:

class Car {
  int? _speed;

  int? get speed {
    return _speed;
  }
  // getter gets the integer and just returns it to the setter method below.

  set speed(newSpeed) {
    if (newSpeed < 0) {
      throw Exception("Speed cannot be zero");
    } else {
      _speed = newSpeed;
    }
  }
  // the above is the setter that gets argument from the getter and does the operations inside it.

  void drive({required int speed}) {
    this.speed = speed;
    if (speed == 0) {
      stop();
    } else {
      print("Accelerating at $speed mph");
    }
  }

  void stop() {
    int speed = 0;
    print("Stopped");
  }
}

void main() {
  Car c = Car();

  c.speed = 20;
  print(c._speed);
  c.drive(speed: -5);
}

// Getters and setters are used where if we need to access and work with the private property of a class in some other dart file/library. Bcos a private property can be accessed only within the file. thus we use getters and setters and assign the private property to some other var name and so on.