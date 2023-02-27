//   Odd or even 

import 'dart:io';
import 'dart:math';

void main() {
  print('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("The entered number is 'even'");
  } else {
    print("The entered number is 'odd'");
  }
}
