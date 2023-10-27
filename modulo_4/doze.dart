import 'dart:io';
void main(){
  print("Digite o valor bruto de seu salário");
  String? sb = stdin.readLineSync();

  int sBruto = int.parse(sb!);
  var vDesc;

  if (sBruto <= 350){ 
    vDesc = sBruto * 0.07;
    print("Seu salário liquido é de: ${(sBruto - vDesc) + 100}");
  }

  if (sBruto > 350 && sBruto <= 600){
    vDesc = sBruto * 0.07;
    print("Seu salário liquido é de: ${(sBruto - vDesc) + 75}");
  }

    if (sBruto > 600 && sBruto <= 900){
    vDesc = sBruto * 0.07;
    print("Seu salário liquido é de: ${(sBruto - vDesc) + 50}");
    }

    if (sBruto > 900){
    vDesc = sBruto * 0.07;
    print("Seu salário liquido é de: ${(sBruto - vDesc) + 35}");
  }
  }
  