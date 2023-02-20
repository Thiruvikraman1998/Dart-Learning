import 'dart:io';
import 'dart:math';

dynamic getNumbers() {
    print("Enter the number: ");
    double? myNum = double.parse(stdin.readLineSync()!);
    return myNum;
}

dynamic getOperator(String operation) {
    print("Enter the desired operator to do the operation. ${operation}");
    String? operator = stdin.readLineSync();
    return operator;
}
void main() {

    double num1 = getNumbers();
    double num2 = getNumbers();
    String op = getOperator("The operations allowed are (+,-,/,*).");

    if(op == "+"){
        print(num1 + num2);
    } else if(op == "-"){
        print(num1 - num2);
    } else if(op == "/") {
        print(num1 / num2);
    } else if(op == "*") {
        print(num1 * num2);
    } else {
        print("Please check the given number and operator is correct");
    }

    // The above program gets 2 input from the user using functions and an operator from the user and makes simple calculation with them using if else statements.
}