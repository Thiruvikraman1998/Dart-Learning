import 'dart:convert';

class Student {
  String? name;
  int? age;

  Student(this.name, this.age);

  Student.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    age = json["age"];
  }

    Student.fromJson2(String jsonString){
        Map<String, dynamic> json = jsonDecode(jsonString);
        name = json['name'];
        age = json['age'];
    }
    // gets the argument from the s2 object and decodes the json map.
}

void main() {
  String studentsMap = '{"name": "Raj", "age": 25}';
  
    var parsedJson = jsonDecode(studentsMap);
  
    Student s = Student.fromJson(parsedJson);
  print("The student name is ${s.name} and age is ${s.age}");

    String studentMap2 = '{"name": "Ram", "age": 25}';

    Student s2 = Student.fromJson2(studentMap2);
    print("The student name is ${s2.name} and age is ${s2.age}");
}

//The above program has 2 examples.