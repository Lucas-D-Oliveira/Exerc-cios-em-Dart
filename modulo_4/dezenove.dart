import 'dart:io';
void main (){
  print("Qual seu sexo? \n (1) Mulher \n (2)Homem");
  String? s = stdin.readLineSync();

  print("Qual sua altura em metros?");
  String? a = stdin.readLineSync();

  int sexo = int.parse(s!);
  double altura = double.parse(a!);
  double pesoId;
  switch(sexo){

    case 1:
    pesoId = (62.1 * altura) - 44.7;

    print("Seu peso idel é: $pesoId");
  break;

    case 2:
    pesoId = (72.7 * altura) - 58;

    print("Seu peso idel é: $pesoId");
  break;

default:
print("Número inválido.");
  }
}