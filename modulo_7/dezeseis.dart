import 'dart:math';
import 'dart:io';

void main(){
  List<List<int>> matriz = List.generate(10, (_) => List.generate(10, (_) => Random().nextInt(100)));
  int  soma = 0; double med = 0; int cont = 0;

    for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
   
    print("");
}

  for(int i = 0; i < 10; i++){ 
    for(int j = 0; j < 10; j++){
      if(matriz[i] == matriz[j]){
        soma += matriz[i][j];
        cont += 1;
      }
      
  }
  }
  med = soma / cont;
  print('\n Média da diagonal principal: $med');
}
