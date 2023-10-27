import 'dart:math';
import 'dart:io';

void main(){

  List<List<int>> matriz =List.generate(20, (_) => List.generate(10, (_) => Random().nextInt(101)));
  List<int> somas = []; int somaC = 0;

  for(int j = 0; j < 10;j++){
somaC = 0;
    for(int i = 0; i < 20; i++){
      somaC += matriz[i][j];
    }
    somas.add(somaC);
  }

    
for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 10; j++) {
      
      matriz[i][j] = matriz[i][j] * somas[j];
      
    }
}
  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
    print("");
}
print(somas);
}
