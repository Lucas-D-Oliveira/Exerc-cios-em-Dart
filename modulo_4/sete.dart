import 'dart:io';

void main(){
print("Digite seu salário:");
String? s = stdin.readLineSync();

int sal = int.parse(s!);
var rs;
if (sal < 500){
  rs = sal + (sal * 0.3);
  print("Seu salário subiu para $rs");
} 

else {
  print("Não há aumento disponivel para você.");
}
} 