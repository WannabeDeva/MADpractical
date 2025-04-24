import 'dart:io';

void main() {
  stdout.write("Enter a list of integers separated by spaces: ");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.trim().split(RegExp(r'\s+')).map(int.parse).toList();

  print("\n--- Number List Analysis ---");
  print("Total: ${calculateTotal(numbers)}");
  print("Highest: ${findHighest(numbers)}");
  print("Lowest: ${findLowest(numbers)}");
  print("Average: ${calculateAverage(numbers)}");
  print("Median: ${calculateMedian(numbers)}");
}

int calculateTotal(List<int> list) {
  return list.reduce((a, b) => a + b);
}

int findHighest(List<int> list) {
  return list.reduce((a, b) => a > b ? a : b);
}

int findLowest(List<int> list) {
  return list.reduce((a, b) => a < b ? a : b);
}

double calculateAverage(List<int> list) {
  return calculateTotal(list) / list.length;
}

double calculateMedian(List<int> list) {
  List<int> sortedList = List.from(list)..sort();
  int n = sortedList.length;
  if (n % 2 == 1) {
    return sortedList[n ~/ 2].toDouble();
  } else {
    return (sortedList[n ~/ 2 - 1] + sortedList[n ~/ 2]) / 2.0;
  }
}
