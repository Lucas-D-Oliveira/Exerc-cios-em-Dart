import 'dart:io';

void main() {
  print("Digite uma frase: ");
  String frase = stdin.readLineSync()!;

  List<String> palavras = frase.split(' ');
  List<String> resultado = [];

  for (int i = 0; i < palavras.length - 1; i += 2) {
    String primeiraPalavra = palavras[i];
    String segundaPalavra = palavras[i + 1];
    String palavraCriptografada = criptografarPalavras(primeiraPalavra, segundaPalavra);
    resultado.add(palavraCriptografada);
  }

  if (palavras.length % 2 != 0) {
    // Lida com a última palavra se houver um número ímpar de palavras
    String ultimaPalavra = palavras.last;
    String palavraInvertida = inverterPalavra(ultimaPalavra);
    resultado.add(palavraInvertida);
  }

  String fraseCriptografada = resultado.join(' ');
  print("Frase criptografada: $fraseCriptografada");
}

String criptografarPalavras(String palavra1, String palavra2) {
  int tamanho1 = palavra1.length;
  int tamanho2 = palavra2.length;

  String palavraCriptografada = "";

  for (int i = 0; i < tamanho1; i++) {
    palavraCriptografada += palavra1[i];
    palavraCriptografada += palavra2[tamanho2 - 1 - i];
  }

  return palavraCriptografada;
}

String inverterPalavra(String palavra) {
  return palavra.split('').reversed.join();
}
