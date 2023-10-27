
import 'dart:io';
import 'dart:math';

void main(){
    List<List<int>> matriz = List.generate(4, (i) => List.generate(5, (j) => Random().nextInt(5)));
   List result = []; int somaI = 0;

    for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }

for(int j = 0; j < 5; j++){
somaI = 0;
  for(int i = 0; i < 4; i++){
    somaI += matriz[i][j];
    
  }
  result.add(somaI);
}

print('\n');

  for(int i = 0; i < result.length; i++){
    if(result[i] > 10){
      stdout.write('${result[i]} \t');
    }
    else{
      print('\n Não há números acima de 10');
    }
  }
}