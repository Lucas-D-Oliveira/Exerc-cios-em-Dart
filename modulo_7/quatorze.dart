import 'dart:math';
import 'dart:io';
void main(){
  List<List> matriz = List.generate(12, (i) => List.generate(13, (_) => Random().nextDouble() * 100));
double maior = matriz[0][0].abs(); double result = 0;
  for(int i = 0; i < 12; i++){
    for(int j = 0; j < 13; j++){
      if(maior < matriz[i][j]){
        maior = matriz[i][j].toDouble();
      }
    }
  }

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 13; j++) {
      stdout.write('${matriz[i][j].toStringAsFixed(1)} \t');
    }
    print("");
}


print('\n Maior número: ${maior.toStringAsFixed(1)} \n');
    for(int i = 0; i < 12; i++){
    for(int j = 0; j < 13; j++){
      result = matriz[i][j] != 0 ? matriz[i][j] / maior  : 0;
      matriz[i][j] = result;
      
  }
  }

    for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 13; j++) {
      stdout.write('${matriz[i][j].toStringAsFixed(2)} \t');
    }
   
    print("");
}

}
