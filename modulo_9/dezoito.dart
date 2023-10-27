import 'dart:io';

void main() {
  print("Digite uma frase: ");
  String frase = stdin.readLineSync()!;

  String resultado = substituirUltimaMetadePorPontoDeInterrogacao(frase);

  print("Frase com a última metade substituída: $resultado");
}

String substituirUltimaMetadePorPontoDeInterrogacao(String frase) {
  List<String> palavras = frase.split(' ');

  for (int i = 0; i < palavras.length; i++) {
    String palavra = palavras[i];
    int meio = palavra.length ~/ 2; 

    if (meio > 0) {
      String primeiraMetade = palavra.substring(0, meio);
      String segundaMetade = '?' * (palavra.length - meio);
      palavras[i] = primeiraMetade + segundaMetade;
    }
  }

  return palavras.join(' ');
}