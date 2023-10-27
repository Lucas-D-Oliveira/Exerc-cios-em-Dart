
import 'dart:io';

void main(){
int f1 = 0;
int f2 = 0;
int f3 = 0;
int f4 = 0;
int f5 = 0;


  for(int i = 1 ; i <=15; i ++){
  stdout.write("Digite sua idade:");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade <= 15){
    f1 ++;
  }
  
  if (idade >= 16 && idade <= 30){
    f2 ++;
  }
  
  if (idade >= 31 && idade <= 45){
    f3 ++;
  }
  
  if (idade >= 46 && idade <= 60){
    f4 ++;
  }
  
  else{
    f5 ++;
  }
}
print("Pessoas por faixa etária: \n 1º: $f1 \n 2º: $f2 \n 3º: $f3 \n 4º: $f4 \n 5º: $f5 \n Somando a primeira e ultima faixa etária se encontram ${((f1 + f2) /15) * 100}% das pessoas." );
}