import 'dart:io';
void main(){

  print("Digite sua idade");
  String? i = stdin.readLineSync();

  int idade = int.parse(i!);

  if (idade >= 18){
    print("Você já pode ir preso!");
  }

  else {
    print("Você é menor de idade");
  }
}