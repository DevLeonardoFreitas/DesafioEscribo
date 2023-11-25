import 'dart:convert';
import 'dart:io';

var sum = 0;
var input = null;
var value = 0;

void verifyMultipleOfThree(int n) {
  if (n % 3 == 0) {
    sum += n;
  }
}

void verifyMultipleOfFive(int n) {
  if (n % 5 == 0) {
    sum += n;
  }
}

void main() {
  while (true) {
    print('Tipe w for exit');

    input = stdin.readLineSync(encoding: utf8);

    if (input == 'w') {
      print('See you later');
      return;
    }
    value = int.parse(input);

    for (int i = 0; i < value; i++) {
      verifyMultipleOfThree(i);
      verifyMultipleOfFive(i);
    }

    print('Resultado: ' + sum.toString());
    sum = 0;
  }
}
