import 'dart:math';
import 'dart:io';

void main(){
  List<List<int>> matriz = List.generate(5, (_) => List.generate(5, (_) => Random().nextInt(5)));
  int  soma = 0; double med = 0; int cont = 0;

    for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
   
    print("");
}

  for(int i = 0; i < 5; i++){ 
    for(int j = 0; j < 4; j++){
      if(matriz[i] == matriz[j]){
        int a = j +1;
        soma += matriz[i][a];
        cont += 1;
        if(j == 3 && i == 3){
          break;
        }
      }
      
  }
  }
  med = soma / (cont - 1);
  print('\n Média da diagonal secundária: $med');
}