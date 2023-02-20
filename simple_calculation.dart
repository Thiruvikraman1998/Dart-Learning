import "dart:io";

void main() {

    
    print("Enter first number: ");
    int? num1 = int.parse(stdin.readLineSync()!);
    print("Enter second number: ");
    int? num2 = int.parse(stdin.readLineSync()!);
    print("The sum is: ${num1 + num2}");

    // the above program works as a simple calculation we can use any other operators. here in the place of int if we change it to double, then we can get both integers and decimal value numbers from the user. where int doesnt allows user to enter decimal values, try this out and check if it works.
}