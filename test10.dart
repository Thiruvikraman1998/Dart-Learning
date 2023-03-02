// Program to check whether it is a prime r not.

// the number which is divisible by itself and divisible by 1 is said to be prime.

import 'dart:io';

void guessPrime(int number) {
  List<int> a = [];  // here we are adding all the numbers that are divisible.

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      a.add(i);
    }
  }
  print(a);

    //using ternary operator
  a.length == 2
      ? print("The number is prime")
      : print("The number is not prime");
}

//if only the 1 and the entered number is itself in the list? then it is a prime, if there is more than those numbers then it is not prime. Thi is what the above ternary operation does.

void main() {
  print("Enter a number to see if it is prime:");
  int no = int.parse(stdin.readLineSync() ?? '');

  guessPrime(no);
    //prime(no);
}

// void prime(int number){
//     for(int i = 1; i <= number; i++){
//         if(number % i == 0){
//             print("The number is prime");
//         }
//     }
// }
