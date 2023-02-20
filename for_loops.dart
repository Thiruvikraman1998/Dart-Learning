import 'dart:io';
import 'dart:math';

// 

void main() {


     List<dynamic> texts = [5, 6, 8, "bob", 4, "Rob"];

    for(int i = 0; i < texts.length; i++) {
        print(texts[i]);
    }  // The for loop first assigns a datatype i as 0 and then it checks the condition is true or not ie. i<texts.length is true or not. then it prints the print statement and then the i increments that is i++. And then it works accordingly as like the first step until the condtion becomes false.

    // Get only strings from the list 

    for (int i = 0; i < texts.length; i++) {
        if(texts[i] is String) {
        print("${texts[i]} is String");
        }
    }    // The above program checks one by on in the list of arrays to check if it has any strings or not. if the texts[i] is a string then it prints the index is string. here i is the incrementation of the index values which checks one by one.

        // <--- For in loop.. --->

    for (dynamic text in texts) {
        print(text);
    }   // this for in loop is mostly used while looping with arrays. here the values of texts is assigned to the text. thus it gives the output as kind of loop.

        
}