import 'dart:io';

// Generators  in Dart    sync* and async* 

Iterable<String> getNames() sync*{   // Iterable is a lazy form of list. we can also use list but for generators Iterable is the ideal one.
   
    yield "raj";
    yield "ram";
    yield "Ravi";
                    // Yield is a keyword alternate to return, which is used mostly with generators. 

     // String? names = stdin.readLineSync()!;
    // yield names;        // example of getting user input in generator
}

void main() {
    for (final names in getNames()){
        print(names);
    }
}