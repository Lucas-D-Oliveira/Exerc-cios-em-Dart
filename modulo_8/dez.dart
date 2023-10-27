import 'dart:io';


 double somadiv(double num){

if(num >= 1){
    double S = 0;
  for (int i = 1; i <= num; i++) {
  S += 1 / i; 
}
return S;
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