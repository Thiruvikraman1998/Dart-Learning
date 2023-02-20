import 'dart:io';
import 'dart:math';

// Simple calculations using switch statemnt.

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

    switch(op) {
        case '+': print(num1 + num2);
            break;
        case '-': print(num1 - num2);
            break;
        case '*': print(num1 * num2);
            break;
        case '/': print(num1 / num2);
            break;
        default: print("invalid Operator");
    }

    // Here the switch (op) checks line by line whether the user input operator matches or not. if it does, then it does the exact operations and breaks the statement, if it doesnt matches then it checks line by line, if nothing matches then the default statement get returned.
}