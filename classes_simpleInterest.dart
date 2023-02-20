class Interest {
  //Simple Interest Formmula = (p*r*t)/100

  double? p;
  double? r;
  double? t;

  Interest(this.p, this.r, this.t);

  double? simpleInterest() {
    return p! * r! * t! / 100;
  }
}

void main() {
  Interest i = Interest(1000, 12, 6);

  var result = i
      .simpleInterest(); // as the method in the class has a return, so it shoul always be stored in a variable when it is called for the first time.
  print(result);
}
