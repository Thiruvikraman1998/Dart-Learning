//  Travel ticket booking

import 'dart:io';

class Passenger {
  String? name;
  int? age;
  String? gender;

  Passenger({required this.name, required this.age, required this.gender});

  void ticket() {
    stdout.write(
        "\n Passenger name: $name \n Passenger age: $age \n Passenger Gender: $gender \n");
    stdout.write("Your tickets booked successfully");
  }
}

void main() {
  List<Passenger>? ticketList;
  String? passName;
  int? passAge;
  String? passGender;

  stdout.write("No.of tickets: \n");
  int noOfTickets = int.parse(stdin.readLineSync()!);

  stdout.write("Please enter travel Date: ");
  String? dateOfJourney = stdin.readLineSync();

  Passenger tickets =
      Passenger(name: passName, age: passAge, gender: passGender);

  for (int i = 1; i <= noOfTickets; i++) {
    stdout.write("Please enter passenger Name: ");
    tickets.name = stdin.readLineSync();
    passName = tickets.name;

    stdout.write("Please enter passenger Age: ");
    tickets.age = int.parse(stdin.readLineSync()!);
    passAge = tickets.age;

    stdout.write("Please enter passenger Gender: ");
    tickets.gender = stdin.readLineSync();
    passGender = tickets.gender;

    ticketList!
        .add(Passenger(name: passName, age: passAge, gender: passGender));
  }

  print("Your travel date is: $dateOfJourney");

  tickets.ticket();

  for (Passenger tickets in ticketList!) {
    print(tickets);
  }
  tickets.ticket();
}
