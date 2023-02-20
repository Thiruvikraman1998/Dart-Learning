import 'dart:io';
import 'dart:math';

//  <--- for loops in functions -->

// greeting users.

void greet(int count) {
    for(int i = 0; i < count; i++) {
    String? name = stdin.readLineSync();
        print("Good morning ${name}");
    }
}

void main() {

    greet(3);
    

    // The above program gets the number of times for the loop to run, and store it to the int count. When we call the greet function, it gets input from the user for the number of times we gave to the count. Thus it prints 3 times.
}