// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

import 'dart:io';
import 'dart:math';

void main() {
  int comp = Random().nextInt(100 +
      1); // This generates a random number between 1-100. if we give without increment 1 in the end, then it chooses only till 1-99.
  int attempts = 0;

  print("Enter a number between 1 - 100");
  while (true) {
    attempts += 1;
    String user = stdin.readLineSync()!;
    if (user == "exit") {
      print("See you again...");
      break;
    } else if (int.parse(user) > 100) {
      print("Enter numbers only below 100");
      continue;
    }

    if (int.parse(user) < comp) {
      print("You guessed too low");
    } else if (int.parse(user) > comp) {
      print("You guessed too high");
    } else if (int.parse(user) == comp) {
      print("You guessed it exaclty correct.");
      attempts += 1;
      break;
    }
    print("\n Enter a number again: ");
  }
  print("\nYou guessed in $attempts attempts");
}
