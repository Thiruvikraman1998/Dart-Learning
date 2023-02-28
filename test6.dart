// Given string is a palindrome or not.
import 'dart:io';

void main() {
  print("Enter a string: ");
  String input = stdin.readLineSync() ?? ''.toUpperCase();
  // in the above line the '??' is used when if the string is empty then it gives default values to it, if not empty then it stores value to the input.
  // we can use this method to stop forcing the input to always be non null (!) in all places.
  String inputReverse = input.split('').reversed.join();
  // if(input == inputReverse){
  //     print("The String $input is a palindrome");
  // }else {
  //     print("$input is not a palindrome");
  // }

  // here we use ternary operator which is the easiest way to compare between conditions.

  // input == inputReverse
  //     ? print("The String $input is a palindrome")
  //     : print("$input is not a palindrome");
  // ternary operater checks and prints if input == input reverse is true then it prints the first condition, and if it comes false then it prints second condition.

  // above we used a simple single condition, but we can also have more than one condition, the above code is similarly executed but with 2 conditions remove comments to see how it works.

  (input.length == 0) //use bracket here when working with more conditions
      ? print("The input is empty")
      : (input == inputReverse)
          ? print("The String $input is a palindrome")
          : input != inputReverse
              ? print("$input is not a palindrome")
              : print("nill");
}
