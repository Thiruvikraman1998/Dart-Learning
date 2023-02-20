import 'dart:io';
import 'dart:math';

void main() {

    String name;
    name = stdin.readLineSync()!;

    if(name.isEmpty) {
        print("enter a name");
    } else{
        print("It is a name");
    }

    // The above is the simple if else function which checks for the user input first. If the user input is blank or empty then it prints to enter name. or if the input has values, then it prints it is a name. The if else statement's condition will always checks wethern the condition is true or false.

    print("Enter a new password");
    String passwd;
    passwd = stdin.readLineSync()!;

    if(passwd.isNotEmpty && passwd.length >= 8) {
        print("Strong Password");
    } else if(passwd.isEmpty || passwd.length <= 8) {
        print("Please enter a strong password");
    } else {
        print("Weak password");
    }

    // The above program is an example for if else if condition, it first checks whether the password input is not empty and has lenght more than 5 if it is true then it prints strong password if not then it checks the below statements.

    bool isSmart = true;
    bool isStudent = true;

    if(isSmart && isStudent) {
        print("True");
    }

    // Using negation operator 

    bool smart = true;
    bool student = false;

    if(smart && student) {
        print("you are smart and student");
    } else if(smart && !student) {
        print("you are smart but not a student");
    } else if(!smart && student) {
        print("You are not smart but student");
    } else {
        print("You are not smart and not student");
    }

    //Here the '!' symbol just makes the value to its opposite, that is in the line 45 the bool value of student is changed to its opposite that is it turns from false to true, thats why it gets printed. 
}