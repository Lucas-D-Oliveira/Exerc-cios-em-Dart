import 'dart:math';
import 'dart:io';

void main() {
  List<List<int>> matriz =
      List.generate(5, (_) => List.generate(5, (_) => Random().nextInt(100)));
  int a = 0;
  int valor = 0;
  int b = 0;

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }

  for (int i = 0; i < 5; i++) {
    valor = matriz[a][b];
    for (int j = 0; j < 5; j++) {
      
      matriz[i][j] = matriz[i][j] * valor;
    }
    a += 1;
    b += 1;
  }
  print('\n');

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }
}
