import 'dart:io';

Map<String, int> ASCII(List palavras) {
  Map<String, int> rMap = {};
  String palavra = '';
  for (int i = 0; i < palavras.length; i++) {
    String palavra = palavras[i];
    for (int j = 0; j < palavra.length; j++) {
      String letra = palavra[j];
    int asciiV = letra.codeUnitAt(0); // Obtém o valor ASCII da letra
    rMap[letra] = asciiV;
    }
    
  }

  return rMap;
}

void main() {
  String rfrase = '';

 print('Digite uma frase: '); String frase = stdin.readLineSync()!;
 List palavras = frase.split(' ');
  Map<String, int> rLetra = ASCII(palavras);

  print("Palavra criptografada em ASCII:");
  rLetra.forEach((key, value) {
    stdout.write("$key: $value \t");
    rfrase += '$value';
  });
  
  print('\n \n $rfrase');
}
