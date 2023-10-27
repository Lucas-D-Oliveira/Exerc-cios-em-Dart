import 'dart:io';

void main() {
  bool roda = true; List notas = []; List  pesos = [];

  while(roda){
  stdout.write("Escolha uma opção:\n (1)Média Aritmética \n (2)Média Ponderada \n (3)Sair \n");
  int? op = int.tryParse(stdin.readLineSync()!);
  
  if(op == 3){
    break;
  }
double? p = 0;
double? valor = 0;
switch(op){
  
  case 1:
double medA = 0;
  print("Digite a nota 1: "); valor = double.tryParse(stdin.readLineSync()!); notas.add(valor);
  
  print("Digite a nota 2: "); valor = double.tryParse(stdin.readLineSync()!); notas.add(valor);

  for(int i = 0; i < notas.length; i++){medA += notas[i];}

  print("A média é: ${medA / 2} \n");
  break;

  case 2:
  double medP = 0; double sP = 0;
  print("Digite a nota 1: "); valor = double.tryParse(stdin.readLineSync()!); notas.add(valor);
  print("Digite o peso 1: "); p = double.tryParse(stdin.readLineSync()!); pesos.add(p);

  print("Digite a nota 2: "); valor = double.tryParse(stdin.readLineSync()!); notas.add(valor);
  print("Digite o peso 2: "); p = double.tryParse(stdin.readLineSync()!); pesos.add(p);

  print("Digite a nota 3: "); valor = double.tryParse(stdin.readLineSync()!); notas.add(valor);
  print("Digite o peso 3: "); p = double.tryParse(stdin.readLineSync()!); pesos.add(p);

  for(int i = 0; i < notas.length; i++){medP += (notas[i] * pesos[i]); sP += pesos[0];}

  print("A média é: ${medP / sP} \n");
  break;

  default:
  print("Opção inválida \n");
  
}

  }

}






