import 'dart:math';
import 'dart:io';

void main() {
  List<List<int>> matriz =
      List.generate(7, (_) => List.generate(10, (_) => Random().nextInt(100)));
  
  int valor = 0;


  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }

  for (int j = 0; j < 10; j++) { 
    valor = 0;
    for (int i = 0; i < 6; i++) {
       valor += matriz[i][j];
       matriz[6][j] = valor;
    }
  }
  
  print('\n');

  for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }
}
