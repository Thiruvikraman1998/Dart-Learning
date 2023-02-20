import 'dart:math';
import 'dart:io';

// The below code is the example for proper function with return statement.

int? sum(int num1, int num2) {  // here int is the data type, we can use any other data types to the function.
    return num1 + num2;   // the return statement should always be placed on the last life of the function.                             as it breaks the code and jumps to the main function and does not checks any                                 operations after return, so it is mandatory to place the return fucntion to the                                 last line of the function.
}

void main() {

    sum(5, 6);            //as the return statement is used the program dont give any output but it 
                        // stores the values or data to the function. when we use print statement then the                                returned value gets printed to the console. check below, 

    print(sum(5, 6));  // this statement prints the value of the return statement.
                
    // get input from the user

    print(sum(int.parse(stdin.readLineSync()!), int.parse(stdin.readLineSync()!)));

    // the above expression gets input from the user and returns the value when gets printed.
}