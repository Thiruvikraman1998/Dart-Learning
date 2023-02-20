import 'dart:io';

void main() {

    // Simple forEach() loop.
    List<String> superheroes = ["Superman", "Heman", "Batman", "Spiderman"];

    superheroes.forEach((hero){
        print('At position: ${superheroes.indexOf(hero)} next hero is ${hero}');
    });
    
    // finding average using forEach loop.
    List<int> marks = [5, 4, 8, 9, 2];
    print('The list of marks is ${marks}');
    double average;
    int total = 0;            
    marks.forEach((mark){
        total = total + mark;
    });
    print('The Total is: ${total}');

    average = total / marks.length;
    print('The average is ${average}');

    // In the above program we are getting average for the list of marks. At first we are declaring two datas average and total. forEach loop first holds the zeroth index value on (mark). and then it adds the total to the mark, now the value of total becomes 5, and the loops runs again now the (mark) has index 1 value, so the total's value is 5 as of now. Hence total = total + mark is 9 and now the total has value of 9. like this for each loop the value of total gets summed to the marks in the list and holds the total value and finally prints it. and calculates the average accordingly.
    
}