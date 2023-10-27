import 'dart:io';

void main() {
  print("Digite o primeiro número:");
  String? num1 = stdin.readLineSync();

  print("Digite o segundo número:");
  String? num2 = stdin.readLineSync();

  int n1 = int.parse(num1!);
  int n2 = int.parse(num2!);


  if (n1 < n2) {
    print('O menor número é: $n1');
  }
  else{
    print('O menor numero é $n2');
  }
}
