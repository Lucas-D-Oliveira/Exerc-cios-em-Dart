import 'dart:io';

void main(){
print("Digite o salário atual:");
String? s = stdin.readLineSync();

int sal = int.parse(s!);
var vAumento;
var salFinal;


if (sal > 900){
  
  print("Não há aumento disponivel");
} 

if (sal > 600  && sal <= 900){
  vAumento = sal * 0.05;
  salFinal = sal + vAumento;
  print("Você teve um aumento de $vAumento , seu salário final é de : $salFinal");
} 

if (sal > 300  && sal <= 600){
  vAumento = sal * 0.1;
  salFinal = sal + vAumento;
  print("Você teve um aumento de $vAumento , seu salário final é de : $salFinal");
} 

if(sal < 300) {
  vAumento = sal * 0.15;
  salFinal = sal + vAumento;
  print("Você teve um aumento de $vAumento , seu salário final é de : $salFinal");
} 
} 

