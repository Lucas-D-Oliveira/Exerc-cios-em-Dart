import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(2, (_) => List.filled(4, 0));
  int cont = 0;
  int par = 0;

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 4; j++) {
      print('Digite um valor inteiro: ');
      int valor = int.parse(stdin.readLineSync()!);
      matriz[i][j] = valor;
    }
  }

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 4; j++) {
      if (matriz[i][j] % 2 == 0) {
        par += matriz[i][j];
      }
       if (matriz[i][j] > 12 && matriz[i][j] < 20) {
          cont += 1;
        }
    }
  }
  print(
      'Quantidade de números entre 12 e 20: $cont \n $matriz \n Total da soma de números par: $par');
}
