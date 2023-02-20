import 'dart:math';

void main() {
    int quantity = 200;
    double price = 5.2;
    double sum = quantity * price;

    //math functions with the values..

    quantity += 100;  // here the syntax refers to quantity = quantity+100 which gives 300.. we can use any other math functions like +,-,*,/...

    //Incrementing or decrementing values..

    int size = 5;

    size++;    // this statement prints the incremented calue for size. you can also decrement using the syntaz "size--;"
    
    print(sum);
    print(quantity);
    print(size);

    // more than this we can do more complex math operations in Dart. for that we have to import "dart:math"; in the first line of the code, below are some examples for the math operations.

    print(min(1, 5));  // this prints the minimum value inside the brackets. meanwhile we can also use max to print maximum values. another ex as follows...

    print(sqrt(144));  //prints the square root.

    print(max(quantity, price));
    print(sqrt(quantity));
}