import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(6, (_) => List.generate(3, (j) => Random().nextInt(100)));
  int menor = matriz[0][0];
  int maior = 0;

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 3; j++) {
      if (maior < matriz[i][j]) {
        maior = matriz[i][j];
      }
       if (menor > matriz[i][j]) {
          menor = matriz[i][j];
        }
    }
  }
  print('O menor número da matriz é: $menor \n O maior número da matriz é: $maior \n $matriz \n');
}
