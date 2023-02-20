import 'dart:io';

//  PAYTM Sound Box demo

void soundBox(int? amount) {
  print('The received paytm payment of rupees: ${amount}');
}

void main() {
  int? paidAmount;
  int? paidMessage;

  print('please pay the amount');

  paidAmount = int.parse(stdin.readLineSync()!);

  paidAmount = paidMessage;
  soundBox(paidMessage);
}
