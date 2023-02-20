// Inheritance (subclasses).

class Animal {
  void breath() {
    print("It breaths");
  }

  void run() {
    print("It runs");
  }
}

class Cat extends Animal {}

class Dog extends Animal {}

// In the above code the class animal is the parent and class cat and class dog is the child. here class cat extends animal is the place where the methods inside parent classes are borrowed by child classes cat and dog. Thus it reduces the repetition of code. in other words the child class extend to parent class and retrieves the methods inside parent class.

void main() {
  final animal = Animal();
  animal.breath();

  final cat = Cat();
  cat.breath();
  cat.run();

  final dog = Dog();
  dog.run();
}
