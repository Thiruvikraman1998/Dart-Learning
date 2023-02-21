import 'dart:convert';

class Car {
  String? name;
  String? color;
  double? price;

  Car(this.name, this.color, this.price);

  Car.carInfo(Map<String, dynamic> json) {
    name = json["name"];
    color = json["color"];
    price = json["price"];
  }
  // the above named constructor takes values from the keys and asign to the properties, and passes them inside the display() method when it is calles.

  void display() {
    print(
        "The new model ${name} has ${color} color which comes with price of ${price}");
  }
}

void main() {
  String carMap = '{"name": "BMW", "color": "Red", "price": 150000.0}';

  var parsedJson = jsonDecode(carMap);

  Car bmw = Car.carInfo(parsedJson);

  bmw.display();

  Car benz = Car("Benz", "Blue", 250000);
  benz.display();
}
