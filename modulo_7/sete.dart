




import 'dart:math';
import 'dart:io';

void main(){

  List<List<int>> matriz =List.generate(4, (_) => List.generate(6, (_) => 1));
  List<List<int>> matrize =List.generate(6, (_) => List.generate(4, (_) => Random().nextInt(10)));

  List<int> somas = []; int somaC = 0;

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write('${matrize[i][j]} \t');
    }
    print("");
}

  for(int i = 0; i < 4;i++){
somaC = 0;
    for(int j = 0; j < 6; j++){
      somaC += matriz[i][j];
    }
    somas.add(somaC);
  }

    
for (int j = 0; j < 4; j++) {
    for (int i = 0; i < 6; i++) {
      
      matrize[i][j] = matrize[i][j] + somas[j];
      
    }
}
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write('${matrize[i][j]} \t');
    }
    print("");
}

}
