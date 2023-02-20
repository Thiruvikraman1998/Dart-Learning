// Extensions in Dart
class Cat {
    String? name;
    Cat(this.name);
}
extension Run on Cat {
    void run(){
        print("The cat $name is running");
    }
}

class Person {
    String? firstName;
    String? lastName;
    Person(this.firstName, this.lastName);
        
}
    extension Fullname on Person{
        String get fullname => "$firstName $lastName";  // get stores the first and last name of the Person and returns when called.
    }
void main(){
    final meow = Cat("Fluffers");
    meow.run();
    final raj = Person("Raj", "Ram");
    print(raj.fullname);
    // in the above code the name of cat is asigned as Fluffers to this.name.. Which is asigned to object meow. So when we call the run() function, it checks for the method that is stated inside cat class, which is asigned to meow. so meow.run() prints the run function.
}