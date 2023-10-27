import 'dart:io';

void main(){
print("Digite seu salário:");
String? s = stdin.readLineSync();

int sal = int.parse(s!);
var rs;
if (sal <= 300){
  rs = sal + (sal * 0.35);
  print("Seu salário subiu para $rs");
} 

else {
  rs = sal + (sal * 0.15);
  print("Seu salário subiu para $rs");
}
} 