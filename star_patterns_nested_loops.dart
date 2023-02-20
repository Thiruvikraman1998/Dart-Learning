import 'dart:io';

//                STAR PATTERNS

//   <--- Right angled triangle patter (nested for loops) --->

void main() {


    print("Enter the number of rows you want the pattern");
    int? rows = int.parse(stdin.readLineSync()!);

    print('This is a right Triangle \n');
    
    for(int i = 0; i < rows; i++) {
        
        for(int j = 0; j <= i; j++) {
            
            stdout.write('* ');
        }
        stdout.writeln();        // stdout.write(); is another way of printing statements. writeln() creats new line.
    }

                // <<--- IMPORTANT --->>
    
    // The above progam illustrates, the star pattern using nested for loops. In nested for loops the inner loop runs until it evaluates to false. for example if the the i is less than the rows then it checks the inner loop that is j is <= i. if it is true then the loop runs until the inner loop itself gets false. in other words if the increment of i has to be 3 then j is 0 so j <= i if yes the loops prints and the j gets incremented and it again runs the inner loop as it is still true. like this the loop runs for 3 times and prints the values 3 times. Once the inner loop gets false then the loop breaks and hence the outerloop is still true, so it increments i and it checks the statement. Now the i = 4 and j = 0 as the inner loop breaks, now the inner loop runs 4 times and it breaks again and goes back to the outer loop and it does this process untill the outerloop evaluates to false.

   // Left triangle  --- multiple nested for loops.

    int row = 5;

    print('This is a left Triangle \n');
        
    for(int i = 0; i < row; i++) {
        for(int j = 2*(row - i); j >= 0; j--) {      // j = 2*(row - i) here the row = 5 and i = 0 hence j holds 10.
            stdout.write(' ');
        }
        for(int j = 0; j <= i; j++) {
            stdout.write('* ');
        }
        stdout.writeln();
    }

    //     // In the above example the each inner loops runs until the become false. In other words, the first inner loop runs until it gets false and then the second inner loop runs until that also gets false. like this the nested loops works.

    // // Pyramid star pattern 

    int numbers = 5;

    print('This is a Pyramid \n');
    for(int i = 0; i <= numbers; i++) {
        for(int j = (numbers-i); j > 0 ; j--) {
            stdout.write(' ');
        }
        for(int j = 0; j<=i; j++) {
            stdout.write('* ');
        }
        stdout.writeln();
    }

    // // combination of right and left triangles.

    int lines = 5;

    print('This is a combination of left and right triangle with in between spaces. \n');
        
    for(int i = 0; i <= lines; i++) {
        for(int j = 0; j <= i; j++) {
            stdout.write('* ');
        }
        for(int j = 4*(lines-i); j > 0; j--) {
            stdout.write(' ');
        }
        for(int j = 0; j <= i; j++){
            stdout.write('* ');
        }
        stdout.writeln();
    }

    // pattern with numbers...

    int i, j, numb, noOfLines = 10;

    for (i = 0; i < noOfLines; i++) {
        numb = 1;               // this numbers value should be asigned after the first loop for number patterns.
        for(j = 0; j <= i; j++){
            stdout.write('${numb} ');
            numb++;
        }
        stdout.writeln();
    }


    // // triangle with same numbers in every rows,

    numbers = 0;
    for(i = 0; i < lines; i++) {
        numbers++;
        for(j = 0; j <= i; j++){
            stdout.write('${numbers} ');
        }
        stdout.writeln();
    }


    int no, line = 10;

    for(int i = 0; i < line; i++) {
        no = 1;
        for(int j = (line-i); j > 0; j--) {
            stdout.write(' ');
        }
        for(int j = 0; j < i; j++){
            stdout.write('${no++}');
        }
        for(int j = 0; j <= i; j++) {
            stdout.write('${no--}');
        }
        stdout.writeln();
    }
}