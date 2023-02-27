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
  int fare = 200;
  int noOfTickets = 0;

  stdout.write("Please enter travel Date: ");
  String? dateOfJourney = stdin.readLineSync();

  print("Add Passenger?(y/n)");
  String? addPassenger = stdin.readLineSync();
  Passenger tickets = Passenger(passName, passAge, passGender);

  if (addPassenger == "y") {
    noOfTickets = noOfTickets + 1;

    for (int i = noOfTickets; i <= noOfTickets; i++) {
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

      print("Do you want to add more passengers:(y/n)");
      String? addMorePass = stdin.readLineSync();
      if (addMorePass == "y") {
        noOfTickets += 1;
      } else {
        break;
      }
    }
  } else {
    print("No passengers added");
  }

  num totalFare =
      fare * ticketList.where((i) => i.age! > 5).length;

  print("\n \n Your travel date is: $dateOfJourney");

  //tickets.ticket();
  void viewTicket() {
    for (Passenger finalTickets in ticketList) {
      print(
          "\n Passenger name: ${finalTickets.name} \n Passenger age: ${finalTickets.age} \n Passenger Gender: ${finalTickets.gender} \n");
    }
  }

  viewTicket();
  tickets.ticket();
  print("\nTotal fare is: $totalFare");
}
