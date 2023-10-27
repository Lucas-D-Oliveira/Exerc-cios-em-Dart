import 'dart:io';


void main() {
  bool roda = true; int? cod; double vI = 0; double juros = 0; int codi = 0; double vF = 0;double vJ = 0; String fvF;

  while(roda){
stdout.write("Qual seu código? \n");
  int? cod = int.parse(stdin.readLineSync()!);
if(cod <=0 ){break;}
codi = cod;

stdout.write("Qual o valor a ser investido? \n");
  vI = double.parse(stdin.readLineSync()!);


  stdout.write("Escolha uma opção:\n (1)Poupança \n (2)Poupança plus \n (3)Fundos de renda fixa \n");
  int? tipo = int.tryParse(stdin.readLineSync()!);
  
fvF = vI.toStringAsFixed(0);
  vF = double.parse(fvF);
  vJ = vI;
switch(tipo){
  
  case 1:
  
   for(int i = 1; i <= 12; i++){
     vF += vF * 0.015;
      juros += vJ * 0.015;
    print("\n Rendimento mensal: ${vF.toStringAsFixed(1)} = $juros%");
   }
  break;

  case 2:
  
  for(int i = 1; i <= 12; i++){
    vF += vF * 0.02;
     juros += vJ * 0.02;
    print("\n Rendimento mensal: ${vF.toStringAsFixed(1)} = $juros%");
   } 
  break;

  case 3:
  
   for(int i = 1; i <= 12; i++){
     vF += vF * 0.04;
      juros += vJ * 0.04;
    print("\n Rendimento mensal: ${vF.toStringAsFixed(1)} = $juros%");
   }
  break;

  default:
  print("Opção inválida \n");
  
} 
}

juros.toStringAsFixed(1);
print(" Código do cliente: $codi \n Valor total: ${vF.toStringAsFixed(1)} \n Total de juros: $juros%");
}