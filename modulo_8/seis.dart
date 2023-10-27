import 'dart:io';


 double? IMC(double a, double s){
  double ideal = 0;
if(s == 1){
  ideal = 62.1 * a - 44.7;
  return ideal;
}
else{
  ideal = 72.7 * a - 58;
  return ideal;
}
}

void main(){


  print("Digite o sua altura "); double altura = double.parse(stdin.readLineSync()!); 

   print("Digite seu sexo: (1)Mulher -- (2)Homem "); double sexo = double.parse(stdin.readLineSync()!);


double? result = IMC(altura, sexo);
print("Seu peso ideial é: ${result!.toStringAsFixed(2)}");
}