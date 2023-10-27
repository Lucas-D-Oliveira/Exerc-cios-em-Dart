import 'dart:io';
void main() {
  List grupo1 = []; List grupo2 = [];
  int valor = 0;

    for (int j = 0; j < 50; j++) {
      stdout.write('Digite os valores do grupo 1: \n');
      valor = int.parse(stdin.readLineSync()!);
      grupo1.add(valor); 
  }
  for(int i = 0; i < grupo1.length; i++){
      if(grupo1[i] > 0){
      grupo2.add(grupo1[i]);}
    }
print(grupo2);
  }