//  Travel ticket booking

import 'dart:io';

class Passenger {
  String? name;
  int? age;
  String? gender;
  dynamic dateOfJourney;

  // Passenger(String name, int age, String gender, dynamic dateOfJourney){
  // this.name = name;
  //     this.age = age;
  //     this.gender = gender;
  //     this.dateOfJourney = dateOfJourney;
  Passenger();

  void passengerDatas() {
    // stdout.write("Please enter passenger Name: ");
    // String passName = stdin.readLineSync()!;
    // this.name = passName;
    // stdout.write("Please enter passenger Age: ");
    // int passAge = int.parse(stdin.readLineSync()!);
    // this.age = passAge;
    // stdout.write("Please enter passenger Gender: ");
    // String passGender = stdin.readLineSync()!;
    // this.gender = passGender;
    // stdout.write("Please enter travel Date: ");
    // dynamic travelDate = stdin.readLineSync().toString();
    // this.dateOfJourney = travelDate;

    stdout.write("Tickets booked successfully");
  }
}

void main() {
  // stdout.write("Please enter passenger Name: ");
  // String name  = stdin.readLineSync()!;

  // stdout.write("Please enter passenger Age: ");
  // int age = int.parse(stdin.readLineSync()!);

  // stdout.write("Please enter passenger Gender: ");
  // String gender = stdin.readLineSync()!;

  // stdout.write("Please enter travel Date: ");
  // String traveldate = stdin.readLineSync()!;
  Passenger p1 = Passenger();
  // p1.name = name;
  // p1.age = age;
  // p1.gender = gender;
  // p1.dateOfJourney = traveldate;
  stdout.write("Please enter passenger Name: ");
  p1.name = stdin.readLineSync();

  stdout.write("Please enter passenger Age: ");
  p1.age = int.parse(stdin.readLineSync()!);

  stdout.write("Please enter passenger Gender: ");
  p1.gender = stdin.readLineSync()!;

  stdout.write("Please enter travel Date: ");
  p1.dateOfJourney = stdin.readLineSync()!;
}
