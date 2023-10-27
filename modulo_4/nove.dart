import 'dart:io';

void main(){
print("Digite seu saldo bancário:");
String? s = stdin.readLineSync();

int saldo = int.parse(s!);
var credito;

if (saldo <= 200){
  credito = saldo * 0.1;
  print("Seu saldo é de: $saldo, e seu crédito disponível é de: $credito");
} 

if (saldo > 200 && saldo <= 300){
  credito = saldo * 0.2;
  print("Seu saldo é de: $saldo, e seu crédito disponível é de: $credito");
} 

if (saldo > 300 && saldo <= 400){
  credito = saldo * 0.25;
  print("Seu saldo é de: $saldo, e seu crédito disponível é de: $credito");
} 

if(saldo > 400){
  credito = saldo * 0.3;
  print("Seu saldo é de: $saldo, e seu crédito disponível é de: $credito");
}
} 