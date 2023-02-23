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

  void ticket() {
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
    stdout.write(
        "\n Passenger name: $name \n Passenger age: $age \n Passenger Gender: $gender \n Travel Date: $dateOfJourney \n");
    stdout.write("Your tickets booked successfully");
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
  stdout.write("No.of tickets: \n");
  int noOfTickets = int.parse(stdin.readLineSync()!);
  Passenger tickets = Passenger();
  stdout.write("Please enter travel Date: ");
  tickets.dateOfJourney = stdin.readLineSync();
  // p1.name = name;
  // p1.age = age;
  // p1.gender = gender;
  // p1.dateOfJourney = traveldate;
  for (int i = 1; i <= noOfTickets; i++) {
    tickets.i = Passenger();
    stdout.write("Please enter passenger Name: ");
    tickets.name = stdin.readLineSync();

    stdout.write("Please enter passenger Age: ");
    tickets.age = int.parse(stdin.readLineSync()!);

    stdout.write("Please enter passenger Gender: ");
    tickets.gender = stdin.readLineSync()!;
  }
  tickets.ticket();
}
