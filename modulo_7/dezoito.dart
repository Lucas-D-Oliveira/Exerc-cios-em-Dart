import 'dart:math';
import 'dart:io';

void main(){
  List<List<int>> matriz = List.generate(8, (_) => List.generate(6, (_) => Random().nextInt(100)));
  int  soma = 0; double med = 0; int cont = 0;

    for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 6; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
   
    print("");
}

  for(int i = 0; i < 8; i++){ 
    for(int j = 0; j < 6; j++){
      if(matriz[i][j] % 2 == 0){
        
        soma += matriz[i][j];
        cont += 1;
        
      }
      
  }
  }
  med = soma / cont ;
  print('\n Média dos números pares: $med');
}