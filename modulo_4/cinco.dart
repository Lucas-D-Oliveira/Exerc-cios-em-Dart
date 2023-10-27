
import 'dart:io';
void main() {
  print("Digite o primeiro número:");
  String? num1 = stdin.readLineSync();

  print("Digite o segundo número:");
  String? num2 = stdin.readLineSync();

int n1 = int.parse(num1!);
int n2 = int.parse(num2!);

 print("Escolha a operação a ser realizada");
 print("Digite 1 para média entre os números, 2 para a diferença do maior para o menor, 3 para o produto e 4 para a divisão do primeiro pelo segundo");
  String? op = stdin.readLineSync();
  int ope = int.parse(op!);

var result;

switch(ope) {

  case 1:
  result = (n1 + n2) / 2;
  print("Resultado: $result");
  break;

  case 2:
  if(n1 > n2) {
    result = n1 - n2;
    print("Resultado: $result");
  }

  else {
    result = n2 - n1;
    print("Resultado: $result");
  }
break;

case 3:
result = n1 * n2;
print("Resultado: $result");
break;

case 4:
if(n2 != 0){
result = n1 / n2;
print("Resultado: $result");
}
else {
  print("O Segundo número não pode ser 0");
  break;
}
break;

default:
print("Número invalido");
return;

}
  
  
}