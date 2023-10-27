import 'dart:io';

void main() {
  List<int> grupo1 = []; int maior = 0; int menor = 0; bool check = true; int posi1 = 0; int posi2 = 0;
  

int valor = 0;
    for (int j = 0; j < 15; j++) {
      stdout.write('Digite os valores do grupo 1: ');
      valor = int.parse(stdin.readLineSync()!);
      grupo1.add(valor); 
  }

  for(int i = 0; i < grupo1.length; i++){
    if(maior < grupo1[i]){
      maior = grupo1[i];
      
    }

    if(check){
      menor = grupo1[0];
      check = false;
    }

    if(menor > grupo1[i]){
      menor = grupo1[i];
     
    }
  }
  posi1 = grupo1.indexOf(maior);
posi2 = grupo1.indexOf(menor);
  print(" O menor número é: $menor, seu indice é $posi2 \n O maior número é: $maior, seu indice é $posi1");
}