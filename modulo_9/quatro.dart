import 'dart:io';

void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;

  String novafrase = frase.replaceAll("  ", " ");
  novafrase = novafrase.trim();
List<String> palavras = novafrase.split(' ');

  print(novafrase);
  print(palavras);
  print('Quantidade de palavras :${palavras.length}');
}