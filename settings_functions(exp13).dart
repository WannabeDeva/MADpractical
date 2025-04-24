import 'dart:io';

void main() {
  stdout.write("Enter a long sentence: ");
  String sentence = stdin.readLineSync()!;

  print("\n--- Sentence Analysis ---");
  print("Number of characters: ${countCharacters(sentence)}");
  print("Number of words: ${countWords(sentence)}");
  print("Reversed sentence: ${reverseSentence(sentence)}");
}

int countCharacters(String sentence) {
  return sentence.length;
}

int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.length;
}

String reverseSentence(String sentence) {
  return sentence.split('').reversed.join('');
}
