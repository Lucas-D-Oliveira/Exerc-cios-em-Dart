import 'dart:io';
void main (){
  List numeros = []; List mult2 = []; List mult3 = []; List mult23 = [];
  int num = 0;int nume = 0;
  while(numeros.length < 7 ){
    print("Digite números inteiros: ");
    num = int.parse(stdin.readLineSync()!);

    

    numeros.add(num);
  
  for(int i = 0; i < numeros.length; i++){
    nume = numeros[i];
    if(nume % 2 == 0){
      mult2.add(nume);
    }

    if(nume % 3 == 0){
      mult3.add(nume);
    }

    if(nume % 2 == 0 && nume % 3 == 0){
      mult23.add(nume);
    }
  }
}

print("Números múltiplos de 2: $mult2 \n Números múltiplos de 3: $mult3 \n Números múltiplos de 2 e 3: $mult23 ");
}