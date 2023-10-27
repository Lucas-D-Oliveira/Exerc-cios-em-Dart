import 'dart:io';

void main(){
  print("Digite a senha");
  String? s = stdin.readLineSync();

  int senha = int.parse(s!);

  if (senha == 4531){

print("Acesso concedido.");
  }

  else {
    print("Acesso negado");
  }
}