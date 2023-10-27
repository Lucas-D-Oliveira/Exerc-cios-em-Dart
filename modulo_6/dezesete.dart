import 'dart:io';

void main() {
  List<int> grupo1 = [];
  List<int> grupo2 = [];
  List<int> grupo3 = [];

int valor = 0;
    for (var j = 0; j < 10; j++) {
      stdout.write('Digite os valores do grupo 1: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo1.add(valor); 
 
  }

      for (var j = 0; j < 10; j++) {
      stdout.write('Digite os valores do grupo 2: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo2.add(valor); 
 
  }

   for (var j = 0; j < grupo1.length; j++) {
      grupo3.add(grupo1[j]);
      grupo3.add(grupo2[j]);
  }

  grupo3.sort((a, b) => b.compareTo(a));

  print("Decrescente $grupo3");
}