//Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

void main() {
  print("\n Enter your name: ");
  String name = stdin.readLineSync()!;
  print("\n Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  print("\n Hi $name, you have ${100 - age} years to be 100 years old.");
}
