import 'dart:io';
void main(){
  bool roda = true; List numeros = [];

  while(roda){
  print("Digite valores inteiro e positivos para o calculo: "); double num = double.parse(stdin.readLineSync()!);

  if(num == 0){
    break;
  }

  if(num > 0 ){
    numeros.add(num);
}

else{
  print("Número inválido \n");
}
}

double sMenor = numeros[1];
double sMaior = numeros [1];
for (int b = 1; b < numeros.length; b++) {

    if (numeros[b] < sMenor) {
      sMenor = numeros[b];
    }
    if (numeros[b] > sMaior) {
      sMaior = numeros[b];
    }
  }
  print(" Maior número:$sMaior \n Menor número$sMenor");
}