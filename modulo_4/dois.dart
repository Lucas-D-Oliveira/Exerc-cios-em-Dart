import 'dart:io';
void main() {
  print("Digite a primeira nota:");
  String? nota1 = stdin.readLineSync();

  print("Digite a segunda nota:");
  String? nota2 = stdin.readLineSync();
  
  int n1 = int.parse(nota1!);
  int n2 = int.parse(nota2!);

  double media;

  media = (n1 + n2) / 2;

  if (media >= 4 && media < 7) {
    print('Exame');
  }

  if (media < 4) {
    print('Reprovado');
  }

  if (media >= 7) {
    print('Aprovado');
  }
}

