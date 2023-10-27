
import 'dart:math';


 double? somar(List num){
double soma = 0;

for(int i = 0; i < num.length; i ++){

  soma += num[i];
  
}
return soma;
}



void main(){


 List numeros = List.generate(15, (i) => Random().nextDouble());


double? result = somar(numeros);
print('$numeros \n');
    print("Soma dos números: ${result!.toStringAsFixed(2)}");
}