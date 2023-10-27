import 'dart:io';


 double somadiv(double num, double cont){

if(num >= 0){
    double soma = num;
  for (int i = 1; i < cont; i++) {
   soma = soma * num;
}
return soma;
}
else{
  return -1;
}
}

void main(){


  print("Digite um número "); double num = double.parse(stdin.readLineSync()!); 

  print("Digite um número para elevar o anterior"); double el = double.parse(stdin.readLineSync()!); 


double result = somadiv(num, el);
if(result != -1){
    print("$num elevado a $el = $result");
}
else{
  print("Número negativo");
}
}