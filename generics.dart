import 'dart:io';

// Generics  in Dart...
// Generics in dart is a way of reducing repetition of code, especialy while creating multiple number of classes, below code explains the generics.

class PairOfInt {
    final String? int1;
    final String? int2;
    PairOfInt(this.int1, this.int2);
}
class PairOfStrings {
    final String? int1;
    final String? int2;
    PairOfStrings(this.int1, this.int2);
}
// In the above we have created two different classes for two different actions, we can reduce repeting the code by using the below syntax.

// Generics -->

class Pair<A, B>{
    final A value1;
    final B value2;
    Pair(this.value1, this.value2);
}

// In the aboce class the <A, B> are the values that are to be taken. it changes dynamically according to the datatype we use. check void main function.

void main(){
    final values = Pair("Raj", "ram");

    final numbers = Pair(10, 20);

    final dynamicValues = Pair("Ram", 10);

    // So as you can see in the above object. we are creating several objects for the same class Pair and passing any kind of datatypes. In this way we can code faster and reduce code repetition.
}

