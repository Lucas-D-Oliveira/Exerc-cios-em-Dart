import 'dart:io';

void main() {
  List<int> grupo1 = [];
  List<int> grupo2 = [];
  List<int> grupo3 = [];
  List<int> grupo4 = [];
  List<int> grupo5 = [];
int valor = 0;
    for (var j = 0; j < 4; j++) {
      stdout.write('Digite o valor ${j + 1} do grupo 1: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo1.add(valor); 
  }

   for (var j = 0; j < 4; j++) {
      stdout.write('Digite o valor ${j + 1} do grupo 2: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo2.add(valor); 
  }

   for (var j = 0; j < 4; j++) {
      stdout.write('Digite o valor ${j + 1} do grupo 3: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo3.add(valor); 
  }

   for (var j = 0; j < 4; j++) {
      stdout.write('Digite o valor ${j + 1} do grupo 4: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo4.add(valor); 
  }

   for (var j = 0; j < 4; j++) {
      stdout.write('Digite o valor ${j + 1} do grupo 5: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo5.add(valor); 
  }

  print(" $grupo1 \n $grupo2 \n $grupo3 \n $grupo4 \n $grupo5 \n");

  grupo1.sort(); grupo2.sort(); grupo3.sort(); grupo4.sort(); grupo5.sort();

  print("Crescente \n $grupo1 \n $grupo2 \n $grupo3 \n $grupo4 \n $grupo5 \n");

  grupo1.sort((a, b) => b.compareTo(a)); grupo2.sort((a, b) => b.compareTo(a)); grupo3.sort((a, b) => b.compareTo(a)); grupo4.sort((a, b) => b.compareTo(a)); grupo5.sort((a, b) => b.compareTo(a));

  print("Decrescente \n $grupo1 \n $grupo2 \n $grupo3 \n $grupo4 \n $grupo5 \n");
}