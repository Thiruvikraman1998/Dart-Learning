import 'dart:io';
import 'dart:math';

//  <--- OOPS concept -->
// classes and onjects combined to form a oop.

// first we have to create a class

class Book {        //the class name should always start with caps, here Book is the class name.
    String? title;
    String? author;
    int? pageno;
}
// in the above cases we are creating custom types like title, author and pageno, 
// '?' refers to that it might have null values.

void main() {

    // Below we are creating objects for the classes. 
    
    final harryPotter = Book();   // main Syntax, Here the object name harryPotter.
    harryPotter.title = "Harry Potter and the sorceres of stone";
    harryPotter.author = "J.K. Rowling";
    harryPotter.pageno = 200;

    Book paradise = Book();
    paradise.title = "Paradise";
    paradise.author = "Author";
    paradise.pageno = 150;

    // in the above instance the harrypotter.title,harryPotter.author and harrypotter.pageno are the custom created data types. where we can store values and call then when we need.
    
    print("${harryPotter.title}\n${paradise.pageno}");

    
}