
import 'dart:math';


 int? verif(List num){
int cont = 0;

for(int i = 0; i < num.length; i ++){
if(num[i] % 2 == 0){
  cont += 1;
  
}
}
return cont;
}

void main(){


 List numeros = List.generate(15, (i) => Random().nextInt(100));


int? result = verif(numeros);
print('$numeros \n');
    print("Quantidade de números pares: $result");
}

