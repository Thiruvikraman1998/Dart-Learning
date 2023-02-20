void main() {
    String greeting = "Morning ";
    print(greeting);
    
    // below we use .length to find out the length of the string.

    print("The length of the string is ${greeting.length}");

    // If we want to print any letter from the string use the below syntax.

    print(greeting[0]); 
    // here the index starts from 0 in the string which can be refered as "Morning " index sequence is 01234567 hence the greetin[0] prints M try changing the index value and see the result. Note: the empty space inside the string also has index value for it.

    // We can modify the strings to upper case and lower case check the syntax below.

    print(greeting.toUpperCase());
    print(greeting.toLowerCase());   
    // These syntax modifies the string to upper and lower case. These are otherwise calles as string functions.

    // If i want a index position of a desired letter i can use indexof funtion.

    print(greeting.indexOf("r")); 
    // this gives the exact index value of the letter.

    print(greeting.contains("n"));
    //The above example tells whether the given n is available in the string or not. it returns with true or false according to the result. Here the "n" is available in the string, hence it returns true.

    //String concatenation
    String greeting2 = "Good";
    print(greeting2 + " " + greeting);

    // Another method is string interpolation
    print("The greeting message is: ${greeting2 + " " + greeting}");
}