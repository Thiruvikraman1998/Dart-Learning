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

  Passenger tickets = Passenger(passName, passAge, passGender);

  print("Add Passenger?(y/n)");
  String? addPassenger = stdin.readLineSync();

  if (addPassenger == "y") {
    noOfTickets = noOfTickets + 1;

    for (int i = noOfTickets; i <= noOfTickets; i++) {
      stdout.write("Please enter passenger Name: ");
      tickets.name = stdin.readLineSync();
      //passName = tickets.name;

      stdout.write("Please enter passenger Age: ");
      tickets.age = int.parse(stdin.readLineSync()!);
      //passAge = tickets.age;

      stdout.write("Please enter passenger Gender: ");
      tickets.gender = stdin.readLineSync();
      //passGender = tickets.gender;

      ticketList.add(Passenger(tickets.name, tickets.age, tickets.gender));

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
    return; // if the passenger is not added then it print the above else and stops the code, which in other words, compiler omits the rest of the code below.
  }

  num totalFare = fare * ticketList.where((i) => (i.age ?? 0) > 5).length;
     //(i.age ?? 0) means assigning default value of 0 if the input age is null.
  // here i is the iterables of the list, we can use our own variables there. i is the value of the Passenger constructor inside the list. and it checks if the passenger age is greater than 5 then it only will get multiplied by the fare and shows the exact value, we used this to omit the fare for kids whose age is below than 5.

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
