import 'dart:io';
void main(){
  List numeros = []; List pares = []; List impares = [];
  
  while(numeros.length < 10){
    print("Digite 10 valores inteiros"); int valor = int.parse(stdin.readLineSync()!); numeros.add(valor);
  }

  for(int i = 0; i < numeros.length; i++){
    if(numeros[i] % 2 == 0){
      pares.add(numeros[i]);
    }
    else{
      impares.add(numeros[i]);
    }

  }
  print("Pares: $pares \n Impares: $impares");
    }
  
