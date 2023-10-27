import 'dart:io';

void main() {
  bool roda = true;

  while(roda){
  stdout.write("Escolha uma opção:\n (1)Novo salário \n (2)Férias \n (3)Décimo terceiro \n (4)Sair \n");
  int? op = int.tryParse(stdin.readLineSync()!);
  
  if(op == 4){
    break;
  }

double? vSal = 0;
switch(op){
  
  case 1:

  print("Digite seu sálario atual: "); vSal = double.parse(stdin.readLineSync()!);
  if(vSal > 600){vSal += vSal * 0.05; }

  if(vSal > 210 && vSal <= 600){ vSal += vSal * 0.1;}

  if(vSal <= 210){ vSal += vSal * 0.15;}
  
  print("Seu novo salário é: $vSal \n");
  break;

  case 2:
  print("Digite seu sálario atual: "); vSal = double.parse(stdin.readLineSync()!);
  
  double vFer = 0;
  vFer =vSal + (vSal * 0.33);

  print("Valor das férias: $vFer \n");
  break;

  case 3:
  print("Digite seu sálario atual: "); vSal = double.parse(stdin.readLineSync()!);
  print("Digite o numero de meses trabalhados: "); int meses = int.parse(stdin.readLineSync()!);

double vDec = 0;

if(meses > 0 && meses <= 12){
  vDec = vSal * (meses / 12);

  print("Valor do décimo terceiro: $vDec");
}
else {
  print("Valor inválido");
}
break;
  default:
  print("Opção inválida \n");
  
}

  }

}