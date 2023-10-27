import 'dart:io';
void main() {
  print("Digite o primeiro número:");
  String? num1 = stdin.readLineSync();

  print("Digite o segundo número:");
  String? num2 = stdin.readLineSync();

  print("Digite o terceiro número:");
  String? num3 = stdin.readLineSync();

int n1 = int.parse(num1!);
int n2 = int.parse(num2!);
int n3 = int.parse(num3!);

  if (n1 < n2 && n1 < n3) {
    print('O menor número é: $n1');
  }

  if (n2 < n1 && n2 < n3) {
    print('O menor número é: $n2');
  }

  if (n3 < n1 && n3 < n2) {
    print('O menor número é: $n3');
  }
}
