class Add {
  int? n1;
  int? n2;
  int? n3;

  Add(this.n1, this.n2);

  Add.num3(this.n1, this.n2, this.n3);  // this is a named constructor 

  void result() {
    if (n3 == null) {
      n3 = 0;
    }
    int result = n1! + n2! + n3!;
    print(result);
  }
}

// in the above method the a.result passes the argument for the Add constructor thus it has only 2 arguments so we passed a condition inside the result method. so the n3 will be zero hence all gets summed and gives the result.

// and meanwhile a2 object holds the named constructor , which has 3 argumenents so there the if statement will never run and prints the result of 3 numbers.
// using the named constructor we can create more than one constructor to the same class.

void main() {
  Add a = Add(5, 6);

  a.result();

  Add a2 = Add.num3(5, 6, 7); //this is the object for named constructor
  a2.result();
}
