import 'dart:io';
import  'dart:math';
void main(){
  List<List<int>> matriz = List.generate(2, (i) => List.generate(3, (_) => Random().nextInt(100)));
int inter = 0;  List intervalo = [Random().nextInt(10)+5]; int cont = 0; 

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
    print("");
}

print('\n');

    for(int i = 0; i < 2; i++){
    for(int j = 0; j < 3; j++){
      inter = intervalo.indexOf(matriz[i][j]);
      if( inter == -1){
        cont += 1;
      }
      
      
  }
  }

print('Quantidade de numéros que não pertence ao intervalo de 5-15: $cont');
}
