import 'dart:io';

class Book {
  String? title;
  String? author;
  int? pages;

//     Book(String name) {  //constructor is also kind of functions But not function. we created a constructor inside the class
//     print('The book name is ${name} ');
// }

  // Book (String bookTitle){
  //     this.title = bookTitle;   // Here the this.title is the title of the object that we create.
  // }

  Book(String bookTitle, String bookAuthor, int bookPages) {
    this.title =
        bookTitle; // Here the this.title is the title of the object that we create.
    this.author = bookAuthor;
    this.pages = bookPages;
  }

  // We can create only one constructer with one class name. if we want to create multiple constructors with same class name we need to assign a name to the fucntion for eg check the below syntax.

  // Book newConstructor () {
  //     return;
  // }
  void displayBook() {
    print("The book ${this.title}, written by $author has ${this.pages} pages.");
    //here we can interpolate this.property name or just the class property name , both are valid like the above has this,title and author has only the property alone, both gives same result.
  }
}

void main() {
  //String? title  = stdin.readLineSync()!;   //we are getting title from the user input and pasing to the function Book(). now the bookTitle value is the user input. now the print statement checks the this.title and prints the title entered by the user.
  Book harryPotter = Book("Sorceres stone", "J.K. Rowling", 300);
  Book paradise = Book("Chapter 1", "Author", 200);

  // Book paradise = Book("title ");
  // paradise.author = "No name";
  // paradise.pages = 300;

  print(
      harryPotter.title); // harrypotter.title is nothing but the objects title.
  print(paradise.author);

  harryPotter.displayBook();
    
}
