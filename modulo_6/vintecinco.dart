import 'dart:io';
void main() {
  List grupo1 = []; 
  int? valor; int maior = 0;

    for (int j = 0; j < 15; j++) {
      stdout.write('Digite os valores do grupo 1: \n');
      valor = int.parse(stdin.readLineSync()!);
      
      grupo1.add(valor); 
  }
  for(int i = 0; i < grupo1.length; i++){
      if(maior < grupo1[i]){
      maior = grupo1[i];}
    }

      for(int i = 0; i < grupo1.length; i++){
       grupo1[i] = grupo1[i] / maior;
    }
print(grupo1);
}