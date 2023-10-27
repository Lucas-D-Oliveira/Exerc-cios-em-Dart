import 'dart:io';
import 'dart:math';

 double? volume(double raio){
double? v;
v = 4/3 * pow(raio, 3);
return v;
}

void main(){


  print("Digite o raio da esfera "); double r = double.parse(stdin.readLineSync()!); 


double? result = volume(r);
print("O volume da esfera é: ${result!.toStringAsFixed(2)}");
}

