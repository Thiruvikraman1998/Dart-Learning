import 'dart:io';
import 'dart:math';

// Simple password checker using Whlie loop and if else 

String passwordFunction() {
    print("Enter password");
    String? input = stdin.readLineSync()!;
    return input;
}

void main() {

    String exactPassword = "vikram";
    String pass = '';
    int count = 0;
    
    
    while(exactPassword != pass) {
        pass = passwordFunction();
        count++;
        if(count == 3) {
            print("Too many attempts");
            break;
        }
    }
    if (exactPassword == pass) {
   print("Your password is correct");
    } else {
        print("\n Try again after sometimes.");
    }

    // In the above example the while first checks whether the password matches or not if it matches it print your password is correct, if it doesnt matches then it runs the loop for 3 times to check any of the time is correct, if the userinput doesnt matches for 3 times then it says too many attempts and says try again after sometimes.
}