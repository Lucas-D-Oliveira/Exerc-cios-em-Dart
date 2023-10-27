import 'dart:io';


 double somadiv(double num){

if(num >= 0){
    double soma = 0;
  for (int i = 1; i <= num; i++) {
   if(num % i == 0){
    soma += i;
   }
}
return soma;
}
else{
  return -1;
}
}

void main(){


  print("Digite um número "); double num = double.parse(stdin.readLineSync()!); 


double result = somadiv(num);
if(result != -1){
    print("A soma dos divisores de $num é: $result");
}
else{
  print("Número negativo");
}
}