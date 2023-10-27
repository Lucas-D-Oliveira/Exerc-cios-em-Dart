import 'dart:math';
import 'dart:io';

double? somar(List a){
double soma= 0;
for(int i = 0; i < 10; i++){
  for(int y = 0; y < 5; y++){
 if(i > 5){
  soma += a[i][y];
 
 } 
}
}
return soma;
}

void main(){
  List num = List.generate(10, (i) => List.generate(10, (y) => Random().nextDouble()));
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 5; j++) {
  stdout.write("${num[i][j]} \t");
  }
  print("");
  }



double? result = somar(num);
  print(" \n Soma dos números depois da sexta linha: ${result!.toStringAsFixed(2)}");
}