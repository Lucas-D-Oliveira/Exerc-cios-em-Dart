import 'dart:math';
import 'dart:io';
void main(){
  List<List<int>> matriz = List.generate(6, (i) => List.generate(4, (_) => Random().nextInt(100)));
int maior = 0;int result = 0;
  for(int i = 0; i < 6; i++){
    for(int j = 0; j < 4; j++){
      if(maior < matriz[i][j]){
        maior = matriz[i][j];
      }
    }
  }

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
    print("");
}

print('\n');
    for(int i = 0; i < 6; i++){
    for(int j = 0; j < 4; j++){
      result = maior * matriz[i][j];
      matriz[i][j] = result;
      
  }
  }

    for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
    print("");
}
}