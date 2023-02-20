import 'dart:io';

void main() {

    

    print("Hey what is you name:");
    String? name = stdin.readLineSync();
    print("Hello ${name}");
    print("What is your userid:");
    String? userId = stdin.readLineSync();
    print("So you are ${name} and your userid is ${userId}");

    // In the above example we get input from user and printed with them, for this we have to first import dart:io. It is mandatory to use only String? data type to get user input. Here int, double and float doesnt works. stdin stands for standard input. And the syntax is stdin.readLineSync(); note: never miss semicolon or camel case.

    // We can also get input from user and change them to upper or lowercase follow the below syntax.

    print("What is your name");
    String? userName = stdin.readLineSync();
    print("Name in upper case: ${userName?.toUpperCase()}");

    //Here the '?' is referred to as the input might have any text or it maybe null. And it prints accordingly.

    //you can also assign the datatype in the begining of the syntax check below the example.

    String? newUser;

    newUser = stdin.readLineSync();
    print("The entered name is ${newUser} the length of string is ${newUser?.length}");

    print("The first Letter of the given string is: ${newUser?[0].toUpperCase()}");
    //In the above example we printed the desired letter of the given index and also we changed it to upper case. Like this we can work with any types of functions with the user input.
    
    
    //getting integer as user input

    int? age;

    age = int.parse(stdin.readLineSync()!);
    print("The age is ${age}");

    //dynamic is used to get any input from the user, say we can get string, integer and also decimal values. And then we can do operations like the given below.

    dynamic num1 = stdin.readLineSync();
    dynamic num2 = stdin.readLineSync();
    print(num1 + num2);
    print((int.parse(num1)) + (int.parse(num2)));

    // **IMPORTANT** In this case we can use var keyword in place of dynamic. but the drawback is if the user enters an int value then the value can never be changed to string or double or bool and so on, meanwhile if the user inputs a string and also it cannot be changed in the upcomming codes. But when we use dynamic type we can get any type of input and we can change or modify as any data types, for ex, we can get int from the user and print as a string and so on.
}