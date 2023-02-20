import 'dart:io';

void main() {

    // Lists is another name for arrays. 

    List<int> numbers = [1,5,6,8,4,8,7];

    print(numbers);   // this prints the values inside the list.

    //we can modify the list values

    numbers[3] = 10;
    print(numbers);  // here the value of the index 3 in the list is changed fro     8 to 10.

    // add and remove values to the list

    numbers.add(12); // this adds 12 to the end of the list.
    print(numbers);

    numbers.remove(6);  // this removes the value 6 in the list.
    print(numbers);

    numbers.removeAt(0);
    print(numbers);   // if we want to remove a specific value from the list removeAt() function is used.

    print(numbers.indexOf(10)); //this prints the index number of the value 10 in the list.

        //  WE CAN USE ALL THE FUNCTIONS THAT WE USED FOR STRING LIKE LENGTH, ADD, REMOVE, INDEXOF, REMOVEAT, CONTAINS AND SO ON...
    
    // length of the string 

    print(" the count of numbers in the list is ${numbers.length}");  // this returns the length of the list.

    // math operations also can be done

    print(numbers[1] + numbers[4]);   // this prints the sum of the values of the index given. all math operations can be done.

    List<String>? names = [stdin.readLineSync()!, stdin.readLineSync()!, stdin.readLineSync()!];

    print(names);  // this example shows that we can also get input from the user for the list values.


    List<double>? values = [double.parse(stdin.readLineSync()!), double.parse(stdin.readLineSync()!), double.parse(stdin.readLineSync()!)];

    print(values);   // the given eg, is for getting integers and decimal values from the user.


    List<String>? newValues = [stdin.readLineSync()!, stdin.readLineSync()!, stdin.readLineSync()!];

    print(int.parse(newValues[0]) + int.parse(newValues[2]));   // getting input as a string and converting them to integer or double values and using math operations to them.

    // Another example for user input as string interpolation.
    List<dynamic>? datas = ["Name: ${stdin.readLineSync()!}, Age: ${stdin.readLineSync()!}"];
    print(datas);
}