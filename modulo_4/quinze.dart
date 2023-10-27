import 'dart:io';
void main (){
print("Simule um invenstimento de 12 meses. \n Digite o valor do investimento");
String? i = stdin.readLineSync(); 

print("Digite o número correspondente ao tipo de investimento \n (1)Poupança \n (2)Fundos de renda fixa");
String? t = stdin.readLineSync();

double vInv = double.parse(i!);
int tip = int.parse(t!);

switch(tip) {
  case 1:
  for (int m = 1;m != 13; m ++) {
    vInv = vInv + (vInv * 0.03);
  }

  print("O valor final do seu investimento seria de: $vInv");
break;

case 2:
  for (int m = 1;m != 13; m ++) {
    vInv = vInv + (vInv * 0.04);
  }
  
  print("O valor final do seu investimento seria de: $vInv");
break;

default:
print("Opção inválida");
break;
}
}