import 'dart:io';
import 'dart:math';

// Guessing game with while loop

String guessingGame(String promptText) {
  print(promptText);
  String? input = stdin.readLineSync()!;
  return input;
}

void main() {
  String answer = "Micheal";
  String userInput = '';

  while (answer != userInput) {
    userInput = guessingGame("Enter a guess");
  }
  print("Your guess is correct");

  // In the above example the while checks whether the user input ios not equal to the answer, if so then it again asks the user to enter the guess, it runs until the user input is equals to the answer, and then it jumps out of the loop and prints the next lines.
}
