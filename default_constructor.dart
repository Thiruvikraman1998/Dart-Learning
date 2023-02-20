class Person {
  String? name;
  String? planet;

  //Person() {} // a constructor that has no parameters are said to be a default constructor. But we can asign values later after object created.
    Person(){
        this.planet = "Earth";  // we can also asing values to the constructor inside the constructor method like this. the values initialized inside the default constructor method is default for all the objects that we create in the entire program. Thus you can see the p1.planet and p2.planet holds the same value "earth".
    }
}

void main() {
  Person p1 = Person();
  p1.name = "Raj";
  //p1.planet = "Saturn";

  print("The person named ${p1.name} is from the planet ${p1.planet}");  // here it takes name from the objects name and planet from the constructor.

    Person p2 = Person();
    p2.name = "Ram";
    print("The person named ${p2.name} is also from the planet ${p2.planet}");    
}
