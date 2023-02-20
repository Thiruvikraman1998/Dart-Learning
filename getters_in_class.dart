void main(){
     var person1 = Person(firstName: 'Raj', lastName: 'Kumar');
    print(person1.fullName);
}

class Person {
    final String firstName;
    final String lastName;
     String get fullName => '$firstName $lastName';

    const Person({required this.firstName, required this.lastName});
}