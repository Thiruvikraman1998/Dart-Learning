// Subclass also known as inheritance.

class Vehicle {
    final int wheelCount;

    const Vehicle(this.wheelCount);

    String toString(){
        return '$runtimeType has $wheelCount wheels';
    }
}
class Car extends Vehicle{
    const Car() : super(4);
}

void main(){
    var v = Vehicle(5);
    print(v);
    //print(v.toString());
    print(Car());
}