import 'dart:io';
void main (){
  List numeros = []; List pares = []; List impares = [];
  int num = 0;int nume = 0;
  while(numeros.length < 7 ){
    print("Digite números inteiros: ");
    num = int.parse(stdin.readLineSync()!);

    numeros.add(num);
  }
  for(int i = 0; i < numeros.length; i++){
    nume = numeros[i];
    if(nume % 2 == 0){
      pares.add(nume);
    }

    if(nume % 2 == 1){
      impares.add(nume);
    }
  }
  print("Números pares: $pares \n Quantidade: ${pares.length} \n Números impares: $impares \n Quantidade: ${impares.length} ");

}