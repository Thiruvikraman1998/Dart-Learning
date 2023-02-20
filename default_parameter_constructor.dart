class Patient{
    String? name;
    int? age;
    String? disease;

    Patient({this.name = "Raj", this.age = 20, this.disease = "Typhoid"}); 
    // Whenever we are working with default constructors we have to enclose them like the above {} brackets.
    // here required key word is not used, as it throws an error while leavin the objects class parameter empty. 

    void display(){
        print("The person named $name is of age $age is suffering from $disease");
    }
}

void main(){
    Patient p1 = Patient(); // we dont want to pass arguments here as we already asigned default values to the constructor parameters.
    p1.display();
}