import 'dart:math';
import 'dart:io';

// The below code gets input name from the user and says good morning.

//Method 1

void greet(String userName){            
    print("Good morning ${userName}");
}

void main() {
    
    greet(stdin.readLineSync()!);

}