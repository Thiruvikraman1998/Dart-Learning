import 'dart:io';
import 'dart:math';

int number(String text) {
  print("Enter a number ${text}");
  int? myNum = int.parse(stdin.readLineSync()!);
  return myNum;
}

void main() {
  int loop = number("to work a while loop");
  print("The numbers follows");
  while(loop <= 10) {
      print(loop);
      loop++;
  }
// int count = 0;
//   while (loop > 1) {
//     print(loop / 2);
//     count++;
//   }

  // The above code works as a simple while loop, loop first checks the given number is less than or equal to 10, if yes then it prints the value and increments to one. Now the incremented value checks whether it is less than equal to 10 if yes then it also prints the value and again increments. this loop works until the condition loop <= 10 becomes false.
  //while loop mostly used for when we dont know how long the loop should run, 
}
