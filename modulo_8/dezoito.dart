
import 'dart:io';
import 'dart:math';

List<int>? Primo(List<int> numeros) {
  List<int> primos = [];

  for (int numero in numeros) {
    if (numero <= 1) {
      continue; 
    }

    bool ehPrimo = true;
    for (int i = 2; i <= sqrt(numero); i++) {
      if (numero % i == 0) {
        ehPrimo = false;
        break;
      }
    }

    if (ehPrimo) {
      primos.add(numero);
    }
}
return primos;
}



void main(){
int cont = 1;

 List<int> numeros = List.generate(60, (i) => Random().nextInt(100)+100);


List? result = Primo(numeros);
print('$numeros \n');

print('Números primos: \n');

for ( int i = 0; i < result!.length; i++){
  if(cont < 11){
    stdout.write("${result[i]} \t");
    cont += 1;
  }
  else{
    break;
  }    
}
}