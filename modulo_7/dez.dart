import 'dart:math';
import 'dart:io';

void main() {
  List<List<int>> matriz =
      List.generate(5, (_) => List.generate(5, (_) => Random().nextInt(10)));
  int somaD2 = 0;
  int somaC = 0;
  int somaL = 0;
  int somaD = 0;
  
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
    print("");
  }

  for (int i = 0; i < 5; i++) {
    int j = 1;
    somaC += matriz[i][j];
  }

  for (int j = 0; j < 5; j++) {
    int i = 3;
    somaL += matriz[i][j];
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i == j) {
        somaD += matriz[i][j];
      }
    }
  }

   for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 4; j++) {
      
      if (i == j) {
         
   int b = j + 1;
        somaD2 += matriz[i][b];
      }
    
    }
   }
    print( 'Soma da linha 4: $somaL \n Soma da coluna 2: $somaC \n Soma da diagonal principal: $somaD \n Soma da diagonal secundária: $somaD2');
  }


