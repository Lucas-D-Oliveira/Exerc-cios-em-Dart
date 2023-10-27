import 'dart:io';
import 'dart:math';
void main() {
  print("Digite o primeiro número:");
  String? num1 = stdin.readLineSync();

  print("Digite o segundo número:");
  String? num2 = stdin.readLineSync();

int n1 = int.parse(num1!);
int n2 = int.parse(num2!);

 print("Escolha a operação a ser realizada. \n Digite: 1 para elevar o primeiro número ao segundo número. \n 2 para a raiz quadrada dos dois números. \n 3 para a raiz cúbica de cada número.");
  String? op = stdin.readLineSync();
  int ope = int.parse(op!);

var result;
var resul;

switch(ope) {

  case 1:
  result = pow(n1, n2);
  print("Resultado: $result");
  break;

  case 2:
  
    result = sqrt(n1);
    resul = sqrt(n2);
    print("Resultado: $result e $resul");
break;

case 3:
result = pow(n1, 1/3);
resul = pow(n2, 1/3);
print("Resultado: $result e $resul");
break;

default:
print("Número invalido");
return;

}
  
  
}