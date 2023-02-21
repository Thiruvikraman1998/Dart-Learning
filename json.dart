import 'dart:convert';

// class Student {
//   String? name;
//   int? age;

//   Student(this.name, this.age);

//   Student.fromJson(Map<String, dynamic> json) {
//     name = json["name"];
//     age = json["age"];
//   }

//     Student.fromJson2(String jsonString){
//         Map<String, dynamic> json = jsonDecode(jsonString);
//         name = json['name'];
//         age = json['age'];
//     }
//     // gets the argument from the s2 object and decodes the json map.
// }

// void main() {
//   Map<String, dynamic> studentsMap = {"name": "Raj", "age": 25};

//     //var parsedJson = jsonDecode(studentsMap);

//     Student s = Student.fromJson(studentsMap);
//   print("The student name is ${s.name} and age is ${s.age}");

//     // String studentMap2 = '{"name": "Ram", "age": 25}';

//     // Student s2 = Student.fromJson2(studentMap2);
//     // print("The student name is ${s2.name} and age is ${s2.age}");
// }

//The above program has 2 examples.

class Computer {
  String? name;
  double? price;

  Computer(this.name, this.price);

  Computer.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    price = json["price"];
  }
    Computer.fromJson2(String computerslist2){
        Map<String, dynamic> json = jsonDecode(computerslist2);
        name = json["name"];
        price = json['price'];
    }
}

void main() {
  String computerList = '{"name": "Dell", "price": 2500.0}';

  var parsedJson = jsonDecode(computerList);

  Computer c1 = Computer.fromJson(parsedJson);

  print("The price of ${c1.name} is ${c1.price}");

    String computerList2 = '{"name": "Lenovo", "price": 2500.25}';

    Computer c2 = Computer.fromJson2(computerList2);
    print("The price of ${c2.name} is ${c2.price}");
}
