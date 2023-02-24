//  Travel ticket booking

import 'dart:io';

class Passenger {
  String? name;
  int? age;
  String? gender;

  Passenger(this.name, this.age, this.gender);

  void ticket() {
    // stdout.write(
    //     "\n Passenger name: $name \n Passenger age: $age \n Passenger Gender: $gender \n");
    stdout.write("Your tickets booked successfully");
  }
}

void main() {
  List<Passenger> ticketList = [];
  String? passName;
  int? passAge;
  String? passGender;

  stdout.write("No.of tickets: \n");
  int noOfTickets = int.parse(stdin.readLineSync()!);

  stdout.write("Please enter travel Date: ");
  String? dateOfJourney = stdin.readLineSync();

  Passenger tickets = Passenger(passName, passAge, passGender);

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

    ticketList.add(Passenger(passName, passAge, passGender));
  }

  print("\n \n Your travel date is: $dateOfJourney");

  //tickets.ticket();
  void viewTicket() {
    for (Passenger finalTickets in ticketList) {
      String? finalName = finalTickets.name;
      int? finalAge = finalTickets.age;
      String? finalGender = finalTickets.gender;

      stdout.write(
          "\n Passenger name: $finalName \n Passenger age: $finalAge \n Passenger Gender: $finalGender \n");
    }
  }

  viewTicket();
  tickets.ticket();
}
