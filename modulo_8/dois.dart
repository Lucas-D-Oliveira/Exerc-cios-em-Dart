import 'dart:io';
int? somaN (int a, int b, int c){
int soma = 0; 

soma = a * 3600;
soma += b * 60;
soma += c;


return soma;
}

void main(){

print("Digite as horas: "); int num = int.parse(stdin.readLineSync()!);
int? horas = num;

print("Digite os minutos: ");  num = int.parse(stdin.readLineSync()!);
int? minutos = num;

print("Digite os segundos: ");  num = int.parse(stdin.readLineSync()!);
int? segundos = num;

int? result = somaN(horas, minutos, segundos);
print("Convertendo tudo para segundos temos: $result segundos.");
}