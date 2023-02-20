import 'dart:io';

void newFunction() {
    print("this is a new function");
}
        // The function is mostly declared on the above of the main function. We can also declare after main function, but the most common practice is declaring above the main function. And the function can be called anywhere inside the program. This thing helps us to avoid repetion of code.
void main() {
    
    // here we are calling the function, and it runs the code inside the given function which is the print statement that we already declared. This function method is used for avoid repetion of code. Let say we want to print the statement 3 times, instead of writing print statement 3 time we can just call the function for the n number of times. check the below example,,
    
    newFunction();
    newFunction();
    newFunction();   
    // as we can see the print statement is printed 3 times as we only called the function.
    
}