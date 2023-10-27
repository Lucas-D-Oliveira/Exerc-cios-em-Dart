
import 'dart:math';

List? inter(List num, List num2){
List num3 = [];

for(int i = 0; i < num.length; i ++){
if(num.contains(num2[i])){
  num3.add(num2[i]);
}
  
}
return num3;
}



void main(){


 List numeros = List.generate(15, (i) => Random().nextInt(50));
 List numeros2 = List.generate(15, (i) => Random().nextInt(50));


List? result = inter(numeros, numeros2);
print('$numeros \n'); print('$numeros2 \n');
    print("Soma dos números: ${result}");
}