import 'dart:math';
import 'dart:io';

int? maiorE (List a){
int maior = a[0][1];
for(int i = 0; i < 10; i++){
  for(int y = 0; y < 10; y++){
 if(i == 0 && y > 0){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

 if(i == 1 && y > 1){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

if(i == 2 && y > 2){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

 if(i == 3 && y > 3){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

 if(i == 4 && y > 4){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

if(i == 5 && y > 5){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

if(i == 6 && y > 6){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

if(i == 7 && y > 7){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

if(i == 8 &&  y > 8){
  if(maior < a[i][y]){
    maior = a[i][y];
  }
 }

  }
}
return maior;
}

void main(){
  List num = List.generate(10, (i) => List.generate(10, (y) => Random().nextInt(100)));
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
  stdout.write("${num[i][j]} \t");
  }
  print("");
  }



int? result = maiorE(num);
  print("maior número acima da diagonal principal é: $result");
}