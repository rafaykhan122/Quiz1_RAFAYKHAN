import 'dart:io';

void main() {

  List<int> numbers = [];
  for (int i = 0; i <= 6; i++) {
    print('Enter number ${i + 1}:');
    int num = int.parse(stdin.readLineSync() ?? '0');
    numbers.add(num);
  }

  int oddSum = 0;
  int smallest = numbers[0];

  for (int number in numbers) {
    if (number % 2 != 0) {
      oddSum += number;
    }

    if (number < smallest) {
      smallest = number;
    }
  }

  print('\nResults:');
  print('Sum of odd numbers: $oddSum');
  print('Smallest number entered: $smallest');
}