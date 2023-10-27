


import 'dart:io';
import 'dart:math';

void main(){
    List<List<int>> matriz = List.generate(3, (i) => List.generate(4, (j) => Random().nextInt(50)));
    int cont = 0; int somaI = 0; double med =0; int somaG = 0;

    for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }

for(int i = 0; i < 3; i++){
  for(int j = 0; j < 4; j++){
    somaG += matriz[i][j];
    if(matriz[i][j] % 2 == 0 && matriz[i][j] != 0){
      cont += 1;
    }
    else{
      somaI += matriz[i][j];
    }
  }
}

med = somaG / matriz.length;

  print('Quantidade de elementos pares: $cont \n Soma dos elementos impares: $somaI \n Média de todos os elementos: ${med.toStringAsFixed(1)}');
}