import 'dart:io';

void main(){
  print("Digite o número correspondente a opção que representa sua idade. \n (1)Menos de 5 anos. \n (2)Entre 5 e 7 anos. \n (3)Entre 8 e 10 anos. \n (4)Entre 11 e 15 anos. \n (5)Entre 16 e 30 anos. \n (6)Acima de 30 anos.");
  String? i = stdin.readLineSync();

  int op = int.parse(i!);

  switch(op){
    case 1:
    print("Crianças abaixo de 5 anos não podem fazer natação.");
    break;

    case 2:
    print("Você está a categoria: Infantil");
    break;

    case 3:
    print("Você está a categoria: Juvenil");
    break;

    case 4:
    print("Você está a categoria: Adolescente");
    break;

    case 5:
    print("Você está a categoria: Adulto");
    break;

    case 6:
    print("Você está a categoria: Sênior");
    break;

    default:
    print("Número invalado.");
  }

  
}