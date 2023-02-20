import 'dart:io';

class Student {
  String? name;
  int? rollno;
  double? gpa;

  Student(String studName, int studRoll, double studGpa) {
    this.name =
        studName; // we can also use ram.name = ".." (objectname.customidentifier.)
    this.rollno = studRoll; // this also can be asigned as ram.rollno = "..."
    this.gpa = studGpa;
  }
  bool isGoodMark() {
    return this.gpa! >= 3;
    // Here we are creating a Method(known as function) inside the class. It is known as class Method.
  }
}

void main() {
  Student ram = Student("Ram", 111, 2.5);
  Student raj = Student("Raj", 123, 3.5);

  print(ram.isGoodMark());
  print(raj.isGoodMark());
}
