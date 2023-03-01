// Rock Paper Scissor game.

import 'dart:io';
import 'dart:math';

void main() {
  Map rules = {"rock": "scissor", "scissor": "paper", "paper": "rock"};
  int user = 0;
  int comp = 0;
  List<String> options = ["rock", "paper", "scissor"];

  print(
      "\n Welcome to rock paper scissor game do you want to start the game? enter (y/n)");
  String startGame = stdin.readLineSync() ?? '';

  if (startGame == "n") {
    print("See you next time");
    return;
  }

  while (startGame == 'y') {
    String compChoice = options[Random().nextInt(options.length)];
    print("Choose a choice");
    String userChoice = stdin.readLineSync() ?? ''.toLowerCase();
    if (userChoice == "exit") {
      print("Game ends");
      break;
    }

    if (!options.contains(userChoice)) {
      print("Enter valid input:");
    } else if (userChoice == compChoice) {
      print("Both choosed same its a tie!");
    } else if (rules[compChoice] == userChoice) {
      print("Computer choosed: $compChoice");
      print("Computer gains 1 point");
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print("Computer choosed: $compChoice");
      print("You gain 1 point");
      user += 1;
    }
  }
  print("Game over \n You: $user  ---  Computer: $comp");
  if (user > comp) {
    print("Hurray you won");
  } else {
    print("Computer wins, better luck next time");
  }
}

// In the above code the rules[compChoice] checks if its value is equal to the user choice from the map. here if the comp chooses rock and user chooses paper then it first checks the else if statement (rules[compChoice] == userChoice) now in the results map the key is rock that the comp choose, and it checks if the key's value is equal to the userChoice, if true then it prints, if false then it checks the other condition.

// We can simply solve this code using if else alone, the above code is bit complex to understand, but its still usefull and time consuming.

// Below code explains using if else.

// import 'dart:io';
// import 'dart:math';

// /// Get a player move via keyboard input
// /// If the player does not enter a valid move
// /// return "Quit" so that the main game loop
// /// knows to end the game
// String getPlayerMove() {
//   print("Would you like (R)ock, (P)aper, or (S)cissors?");
//   String selection = stdin.readLineSync()!.toUpperCase();
  
//   switch (selection) {
//     case "R":
//       return "Rock";
//       break;
//     case "P":
//       return "Paper";
//       break;
//     case "S":
//       return "Scissors";
//       break;
//     default:  //if anything but R, P, or S
//       return "Quit";
//       break;
//   }
// }

// /// Return a random move in the form of a string of either
// /// "Rock", "Paper", or "Scissors"
// String? getComputerMove() {
//   Random rand = new Random();
//   int move = rand.nextInt(3);  //random int from 0 to 2
  
//   switch (move) {
//     case 0:
//       return "Rock";
//       break;
//     case 1:
//       return "Paper";
//       break;
//     case 2:
//       return "Scissors";
//       break;
//     default:
//       break;
//   }
// }

// /// Determine if the player or the computer won
// /// by comparing [playerMove] to [computerMove]
// String whoWon(String playerMove, String computerMove) {
//   if (playerMove == computerMove) {  //if the same, it's a tie
//     return "Tie";
//   } else if (playerMove == "Rock" && computerMove == "Scissors") {
//     return "You Win!";
//   } else if (playerMove == "Scissors" && computerMove == "Paper") {
//     return "You Win!";
//   } else if (playerMove == "Paper" && computerMove == "Rock") {
//     return "You Win!";
//   } else {  //if it's not a tie and you didn't win, computer won
//     return "Computer Wins!";
//   }
// }

// void main() {
//   while(true) {  //main game loop (qusi infinite loop)
//     print("Rock, Paper, Scissors Shoot!");
//     String playerMove = getPlayerMove();
    
//     if (playerMove == "Quit") {
//       return;  //returning from void function exits it
//     }
    
//     print("You played $playerMove");
//     String? computerMove = getComputerMove();
//     print("Computer played $computerMove");
//     print(whoWon(playerMove, computerMove!));
//   }
// }