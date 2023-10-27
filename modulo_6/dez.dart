import 'dart:io';

void main(){
List Prinum = []; List<int> Secnum = []; List newPrinum = []; List newSecnum = []; List primos = [];
int valor; int total = 0; int c = 0; bool check = false;

while(Prinum.length <10){
  print("Digite 10 valores inteiros"); valor = int.parse(stdin.readLineSync()!); Prinum.add(valor);
}

while(Secnum.length <5){
  print("Digite 5 valores inteiros"); valor = int.parse(stdin.readLineSync()!); Secnum.add(valor);
}

for(int j = 0; j < Secnum.length; j ++){
      total += Secnum[j]; }

for(int i = 0; i < Prinum.length; i++){
  if(Prinum[i] % 2 == 0){
    
  newPrinum.add(Prinum[i] + total); 
  }
}

for(int a = 0; a < Prinum.length; a++){
   int div = 0;
  if(Prinum[a] % 2 == 1){
    primos.add(Prinum[a]);
     if(check){
      c += 1;
     }

    for(int b = 0; b < Secnum.length; b++){
      
    if(primos[c] % Secnum[b] == 0 ){
      div += 1;
      }      
    } 
    newSecnum.add(div);
  }
  check = true;
}
print(" $newPrinum \n $newSecnum");
}