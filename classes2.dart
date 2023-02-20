// class Person {
//   int? id;
//   String? name;

//   //Person(this.id, this.name);

// //Method
//   String? displayData() {
//     print('Name is $name and Id is $id');
//   }
// }

// void main() {
//   Person p1 = Person();
//   p1.name = "Raj";
//   p1.id = 20;
//   //if we didnt create a constructor then we should give the datas for p1 manualy, but if we create a constructor then we can just pass the arguments inside the pi = Person("....") both gives same op.
//   p1.displayData();
//   //p1 object calls the method(Function) inside its class Person. thus it prints the value inside displayData() method.
// }

class Camera {
  int? id;
  String? name;
  double? price;

  Camera(this.id, this.name, this.price);

  bool isPriceHigh() {
    if (price! >= 2000) {
      //print("true");
      return true;
    } else {
      //print("False");
      return false;
    }
  }
}

void main() {
  Camera c1 = Camera(1, 'Sony', 2500);
  Camera c2 = Camera(2, 'Canon', 5000);
  Camera c3 = Camera(3, 'nikon', 1500);

  // if (c1.isPriceHigh() && c2.isPriceHigh()) {
  //   print('The Price is high');
  // } else {
  //   print("Price is Low");
  // }

   bool result =  c1.isPriceHigh();
    print(result);
}
