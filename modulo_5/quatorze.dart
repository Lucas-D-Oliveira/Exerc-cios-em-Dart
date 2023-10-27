import 'dart:io';

void main() {
  List<int> opOtimo = [];
  List<int> opRegular = [];
  List<int> opBom = [];
  double medf = 0;
  double medg = 0;
  int quant = 0;
  int quantR = 0;

  
  for (int i = 1; i <= 15; i++) {
    stdout.write("\n Digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("\n Oque achou do filme?: \n 1-Regular \n 2-Bom \n 3-Ótimo \n");
    int op = int.parse(stdin.readLineSync()!);


  switch(op){
    case 3: 
      opOtimo.add(idade);
    break;

    case 2: 
      opBom.add(idade);
    break;

    case 1:
      opRegular.add(idade);
    break;

    default:
    print("Opção inválida");
    
    
  }
  }
  for (int i = 0; i < opOtimo.length; i++) {
    quant = opOtimo.length;
    medg = medg += opOtimo[i];
    medf = medg / quant;
  }

  for (int i = 0; i < opRegular.length; i++) {
    quantR = opRegular.length;
  }

  for (int i = 0; i < opBom.length; i++) {
    quant = 0;
    quant = opBom.length;
    
    ;
  }

  print(" Média da idade entre as pessoas que responderam ótimo: $medf \n Quantidade de pessoas que responderam relugar: $quantR \n Porcentagem de pessoas que responderam Bom: %${(quant / 15) * 100}");
  }
  
