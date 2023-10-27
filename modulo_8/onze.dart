import 'dart:io';
import 'dart:math';


 double somadiv(double num){

if(num >= 1){
    double S = 0;
  for (int i = 1; i <= num; i++) {
  S += ((pow(i, 2) + 1) / (i + 3) ); 
  
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
    print(" $result");
  
}
else{
  print("Número negativo");
}
}