

import 'dart:io';
import 'dart:math';

void main(){
    List<List<int>> matriz = List.generate(20, (i) => List.generate(5, (j) => Random().nextInt(50)));
    int maior = 0; int indx = 0; int indy = 0;

    for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }

for(int i = 0; i < 20; i++){
  for(int j = 0; j < 5; j++){
    
    if(matriz[i][j] > maior){
      maior = matriz[i][j];
      indy = i;
      indx = j;
    }
    
    }
  }

  

  
  print('Valor do produto mais caro: $maior \n Número do produto mais caro: ($indy,$indx) \n Número da loja: ($indy)');
}