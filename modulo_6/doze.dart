import 'dart:io';

void main (){
  List<int> numeros = []; int total = 0;
  for(int i = 1; i <= 5;i++){
    print("Digite o $iº número: "); int valor = int.parse(stdin.readLineSync()!); numeros.add(valor); 
  }
  for(int i = 0; i < numeros.length;i++){
    total += numeros[i];
  }

  print("Os números digitados foram: ${numeros[0]} + ${numeros[1]} + ${numeros[2]} + ${numeros[3]} + ${numeros[4]} = $total ");
}