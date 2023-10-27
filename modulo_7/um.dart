import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(3, (_) => List.generate(5, (j) => Random().nextInt(100)));
  int cont = 0;

 for(int i = 0; i <3;i ++){
  
    for(int j = 0; j <5;j ++){
      if(matriz[i][j] > 15 && matriz[i][j] < 20){
        cont += 1;
      }
    }
  }
  print('Quantidade de números entre 15 e 20: $cont \n $matriz');
}

  