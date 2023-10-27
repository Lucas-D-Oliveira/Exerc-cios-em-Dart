import 'dart:io';


 double fatorial(double num){

if(num >= 0){
    double a = 1;
  for (int i = 1; i <= num; i++) {
    a *= i;
}
return a;
}
else{
  return -1;
}
}

void main(){


  print("Digite um número "); double num = double.parse(stdin.readLineSync()!); 


double result = fatorial(num);
if(result != -1){
    print("Fatorial de $num é: $result");
}
else{
  print("Número negativo");
}
}
