import 'dart:io';
import 'dart:math';

void main() {
  List<List<double>> matriz = List.generate(3, (_) => List.generate(3, (_) => Random().nextDouble()));
  double valor = 0; 

  print('Digite um valor: \n');  
  valor = double.parse(stdin.readLineSync()!);

  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 3; j++){
      double matrizValor = matriz[i][j];
      matriz[i][j] = matrizValor * valor;
    }
  }
  
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('${matriz[i][j].toStringAsFixed(1)} \t');
    }
    print("");
  }
}