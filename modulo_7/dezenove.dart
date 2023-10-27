import 'dart:math';
import 'dart:io';

void main(){
  List<List<int>> matriz = List.generate(5, (_) => List.generate(5, (_) => Random().nextInt(100)));
   int maior = 0;

    for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
   
    print("");
}

for(int i = 0; i < 5; i++){ 
    for(int j = 0; j < 5; j++){
      if(matriz[i][j] > maior){
        maior = matriz[i][j];
      }
      
  }
  }


  for(int i = 0; i < 5; i++){ 
    for(int j = 0; j < 5; j++){
      if(matriz[i] == matriz[j]){
        matriz[i][j] = matriz[i][j] * maior;
      
      }
      
  }
  }
  print('\n');
  
      for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
   
    print("");
}
 
}