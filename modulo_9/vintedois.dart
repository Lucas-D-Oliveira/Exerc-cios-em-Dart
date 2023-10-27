import 'dart:io';

void main() {
  print("Digite uma sequência de caracteres: ");
  String sequencia = stdin.readLineSync()!;

  if (sequencia.isEmpty) {
    print("A sequência está vazia.");
    return;
  }

  var charAtual = sequencia[0];
  var charMaiorSubsequencia = charAtual;
  var tamanhoMaiorSubsequencia = 1;
  var tamanhoSubsequenciaAtual = 1;

  for (int i = 1; i < sequencia.length; i++) {
    if (sequencia[i] == charAtual) {
      tamanhoSubsequenciaAtual++;
    } else {
      if (tamanhoSubsequenciaAtual > tamanhoMaiorSubsequencia) {
        tamanhoMaiorSubsequencia = tamanhoSubsequenciaAtual;
        charMaiorSubsequencia = charAtual;
      }
      charAtual = sequencia[i];
      tamanhoSubsequenciaAtual = 1;
    }
  }

  if (tamanhoSubsequenciaAtual > tamanhoMaiorSubsequencia) {
    tamanhoMaiorSubsequencia = tamanhoSubsequenciaAtual;
    charMaiorSubsequencia = charAtual;
  }

  print("Maior subsequência: $charMaiorSubsequencia, tamanho: $tamanhoMaiorSubsequencia");
}
