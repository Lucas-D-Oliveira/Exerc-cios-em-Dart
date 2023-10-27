import 'dart:io';

void main(){
  print("Informe sua idade");
  String? i = stdin.readLineSync();

  print("Informe seu peso");
  String?  p = stdin.readLineSync();

  int idade = int.parse(i!);
  int peso = int.parse(p!);

  if(idade < 20 && peso <= 60){
    print("Grupo de risco: 9");
  }

  if(idade < 20 && (peso > 60 && peso <= 90)){
    print("Grupo de risco: 8");
  }

  if(idade < 20 && peso > 90){
    print("Grupo de risco: 7");
  }

  if(idade >= 20 && idade <= 50 && peso <= 60){
    print("Grupo de risco: 6");
  }

  if(idade >= 20 && idade <= 50 && peso > 60 && peso <= 90){
    print("Grupo de risco: 5");
  }

  if(idade >= 20 && idade <= 50 && peso > 90){
    print("Grupo de risco: 4");
  }

  if(idade > 50 && peso <= 60){
    print("Grupo de risco: 3");
  }

  if(idade > 50 && peso > 60 && peso <= 90){
    print("Grupo de risco: 2");
  }

  if(idade > 50 && peso > 90){
    print("Grupo de risco: 1");
  }
}