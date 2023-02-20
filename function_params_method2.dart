import 'dart:math';
import 'dart:io';

// The below code gets input name from the user and says good morning.

//Method 2

void greet(userName){            
    print("Good morning ${userName}");
}

void main() {

    String? userName = stdin.readLineSync();
    
    greet(userName);

}