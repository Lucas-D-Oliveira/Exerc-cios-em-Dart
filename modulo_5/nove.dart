import 'dart:io';

void main() {
  String? i;
  double idade = 0;
  double total1 = 0;

  String? a;
  double altura = 0;
  double total2 = 0;

  String? p;
  double peso = 0;
  double total3 = 0;

  for (int j = 1; j <= 10; j++) {
    stdout.write("Digite sua idade: ");
    i = stdin.readLineSync();
    idade = double.parse(i!);

    stdout.write("Digite sua altura: ");
    a = stdin.readLineSync();
    altura = double.parse(a!);

    stdout.write("Digite sua peso: ");
    p = stdin.readLineSync();
    peso = double.parse(p!);

    
      total1 = total1 + idade;
    

    if (peso > 90 && altura < 1.50) {
      total2 = total2 + 1;
    }

    if (idade >= 10 && idade <= 30 && altura > 1.90) {
      total3 = total3 + 1;
    }
  }
  print(
      "Media das idades: ${total1 /10} \n Pessoas com mais de 90 quilos e menos de 1.50 metros: $total2 \n Porcentagem de pessoas entre 10 e 30 anos que medem mais de 1.90: %${(total3 / 10) * 100}");
}
