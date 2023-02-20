
//  method override or polymorphism in Dart

class Animal {
    String? sound = "No sound";
    String? actions = "No actions";
    
    void animal(){
        print("No sound or actions available");
    }    
}
class Cat extends Animal{
    String? sound = "Meows";
    String? actions = "Purrs";
    
    void animal(){
        print("They are fluffy");
    }
}
class Dog extends Animal {
    String? sound = "Bows";
    String? actions = "Gaurds";

    // void animal(){
    //     print("The are too friendly");
    // }
}
void main(){
   Animal animal = Animal();
    Dog dog = Dog();
    Cat cat = Cat();
    print(dog.actions);
    dog.animal();
}