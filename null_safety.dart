// import 'dart:io';
// // Null safety and topics in null

// void main() {
//   const String? firstName = null;
//   const String? lastName = "kumar";
//   const String? age = '25';

//   const firstNonNullValue = firstName ?? lastName ?? age;
//   print(firstNonNullValue);
//   // first it check the first name if its null, then it checks the last name. when the last name is not null, the compiler breaks and leaves the other condition. it just checks the first value which is not null. another ex, below.

//   String? name = null;
//   String? tAge = null;
//   String? language = 'English';

//   var firstNoNullValue = name ?? tAge ?? language;
//   print(firstNoNullValue);

//   // ?? operator is used to pick non null values.
//   // ??= operator is called null-aware asignment operator.
// }

// best null safety practice instead of forcing tha object as not null(!),
// check out this link: https://stackoverflow.com/questions/17006664/what-is-the-dart-null-checking-idiom-or-best-practice

makeCoffee(String coffee, [String? dairy]) {
  if (dairy != null) {
    print('$coffee with $dairy');
  } else {
    print('Black $coffee');
  }
}

main() {
  makeCoffee(
    "Coffee",
  );
}
