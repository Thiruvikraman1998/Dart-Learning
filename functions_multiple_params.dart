import 'dart:math';
import 'dart:io';

// The below code gets input from the user as multiple parameters.



void greet(String firstName , String lastName, int age) {            
    print("Hey ${firstName} ${lastName} is your age ${age} ?");
}

void main() {

    greet(stdin.readLineSync()!, stdin.readLineSync()!, int.parse(stdin.readLineSync()!));    

    // the above example gets 3 inputs from the user and stores its values to the parameters inside the greet function, and then prints the statement while called. 

}