import 'dart:io';
void main() {
  List grupo1 = []; List grupo2 = []; List grupo3 = [];
  int? valor;  int b = 4;

    for (int j = 0; j < 5; j++) {
      stdout.write('Digite os valores do grupo 1: \n');
      valor = int.parse(stdin.readLineSync()!);
      
      grupo1.add(valor); 
  }

  for (int j = 0; j < 5; j++) {
      stdout.write('Digite os valores do grupo 2: \n');
      valor = int.parse(stdin.readLineSync()!);
      
      grupo2.add(valor); 
  }
  for(int i = 0; i < grupo1.length; i++){    
    grupo3.add(grupo1[i] - grupo2[b]);
    b = b - 1;
    }
print(grupo3);
  }