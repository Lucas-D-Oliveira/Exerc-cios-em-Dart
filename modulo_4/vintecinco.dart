import 'dart:io';

void main(){
  print("Digite o número de horas extras em minutos");
  String? hx = stdin.readLineSync();

  print("Digite o número de horas falta em minutos");
  String? hf = stdin.readLineSync();

  double hExtra = double.parse(hx!);
  double hFalta = double.parse(hf!);
  double minF;

  minF = hExtra - ((hFalta / 3) * 2);

  if(minF > 2400){
    print("Ganhou o valor de: 500 reais");
  }

if(minF > 1800 && minF <= 2400){
    print("Ganhou o valor de: 400 reais");
  }

  if(minF > 1200 && minF <= 1800){
    print("Ganhou o valor de: 300 reais");
  }

  if(minF >= 600 && minF <= 1200){
    print("Ganhou o valor de: 200 reais");
  }

  if(minF < 600) {
    print("Ganhou o valor de: 100 reais");
  }
}
