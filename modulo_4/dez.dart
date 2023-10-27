import 'dart:io';

void main(){
print("Digite o valor de fábrica:");
String? fab = stdin.readLineSync();

int fabrica = int.parse(fab!);
var vfinal;


if (fabrica <= 12000){
  vfinal = fabrica + (fabrica * 0.05);
  print("O valor final é de $vfinal");
} 

if (fabrica > 12000 && fabrica <= 25000){
  vfinal = fabrica + (fabrica * 0.1) + (fabrica * 0.15);
  print("O valor final é de $vfinal");
} 

if(fabrica > 25000) {
  vfinal = fabrica + (fabrica * 0.15) + (fabrica * 0.2);
  print("O valor final é de $vfinal");
} 


} 

