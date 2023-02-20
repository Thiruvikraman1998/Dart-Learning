import 'dart:async';
// Futures in Dart async/ await

// void getStatus() {
//   status();
//   delayMessage1();
//   delayMessage2();
//   delayMessage3();
// }

// void status() {
//   final waitTime = Duration(seconds: 8);
//   Future.delayed(waitTime, () {
//     print("Your application approved");
//   });
// }

// void delayMessage1() {
//   print("Hold on");
// }

// void delayMessage2() {
//   final waitTime = Duration(seconds: 3);
//   Future.delayed(waitTime, () {
//     print("We are fetching data from the server");
//   });
// }

// void delayMessage3() {
//   final waitTime = Duration(seconds: 6);
//   Future.delayed(waitTime, () {
//     print("Its taking longer than expected");
//   });
// }

Future<int>? delayedMultiply(int a) {
  return Future.delayed(const Duration(seconds: 3), () {
    return a * 2;
  });
}

void main() async {
  //getStatus();
  final result = await delayedMultiply(10);
  print(result);

  // async and await are the keywords that is used to perform the asynchronous actions and invoke them as per the duration of the future.
}
