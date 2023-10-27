import 'dart:io';

void main() {
  print("Digite uma frase para criptografar:");
  String input = stdin.readLineSync()!;

  String encryptedPhrase = encryptPhrase(input);

  print("Frase criptografada: $encryptedPhrase");
}

String encryptPhrase(String phrase) {
  // Inverte a frase
  String reversedPhrase = reverseString(phrase);

  // Define as consoantes
  final consoantes = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";

  // Substitui as consoantes por '#'
  for (int i = 0; i < reversedPhrase.length; i++) {
    if (consoantes.contains(reversedPhrase[i])) {
      reversedPhrase = reversedPhrase.replaceRange(i, i + 1, '#');
    }
  }

  return reversedPhrase;
}

String reverseString(String str) {
  return String.fromCharCodes(str.runes.toList().reversed);
}
