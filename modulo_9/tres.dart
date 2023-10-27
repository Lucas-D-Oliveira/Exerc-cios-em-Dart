import 'dart:io';

void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;

  String novafrase = frase.replaceAll(" ", "");
  novafrase = novafrase.trim();

  print(novafrase);
}