import 'dart:io';
void main (){
  List numeros = [];
  double num = 0; int negativo = 0; double positivo = 0;

  while(numeros.length < 10 ){ 

    print("Digite números reais: ");
    num = double.parse(stdin.readLineSync()!); numeros.add(num);
}

for(int i = 0; i < numeros.length; i++){
    if(numeros[i] > 0){
      positivo += numeros[i];
    }
    else{
      negativo += 1;
    }
  }

print("\n Soma dos números positivos: $positivo \n Quantidade de números negativos: $negativo");
}