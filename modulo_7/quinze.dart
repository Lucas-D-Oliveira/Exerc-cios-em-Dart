import 'dart:math';
import 'dart:io';

void main(){
  List<List<int>> matriz = List.generate(5, (_) => List.generate(5, (_) => Random().nextInt(100)));
  int  somaL = 0; int somaC = 0; List num1 = []; List num2 = [];

    for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
   
    print("");
}

  for(int i = 0; i < 5; i++){
    somaL = 0;
    for(int j = 0; j < 5; j++){
      somaL += matriz[i][j];
  }
  num1.add(somaL);
  }

  for(int j = 0; j < 5; j++){
    somaC = 0;
    for(int i = 0; i < 5; i++){
      somaC += matriz[i][j];
  }
  num2.add(somaC);
  }
  print('\n $num1 \n $num2');
}