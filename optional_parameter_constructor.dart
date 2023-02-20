class Staff{
    String? name;
    int? empid;
    int? age;

    Staff(this.name, this.age, [this.empid]);  //argument inside'[]' is an optional parameter, and it should always be on the end of the construstor.
    // but we can also initialise any values for any optional parameters inside the constructor itself like this [this.empid = 20].

    void display(){
        print("name is ${this.name} empid is ${this.empid} and age is ${this.age}");
    }
}

void main(){
Staff s1 = Staff("Ram", 30, 123);
    Staff s2 = Staff("Raj", 35);  // optional parameters are the ones we can asign data or can also omit them, so if we called the property anywhere it prints null. for this we should add the optional parameter inside '[]' brackets inside the constructor.

s1.display();
s2.display();
}