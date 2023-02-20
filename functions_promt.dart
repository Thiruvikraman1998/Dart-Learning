import 'dart:math';
import 'dart:io';

// The below code gets input name from the user and says good morning.

// Promting a function

dynamic prompt(promptText){     // In the place of dynamic we can use any                                    other datatype as per the requirement of                                         code.
    print(promptText);
    dynamic answer = stdin.readLineSync();
    return answer;
}      // Here the value of the answer is returned and assigned to the string color thus it prints the color in the end. this is how we return the value and can be used in any other times insid the code.
    
void main() {

    String color = prompt("Enter a color: ");
    String celebrity = prompt("Enter the celebrity name: ");
    String age  = prompt("Enter the age: ");
    print("The color is ${color} and the celebrity is ${celebrity} and your age is ${age}");

    // Like the above example the return value can be stored for any number of values and can be used later in the code, which avoids code reuse.
}