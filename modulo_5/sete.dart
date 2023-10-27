import 'dart:io';

void main() {
  String? i;
  double idade = 0;
  double totalI = 0;

  String? a;
  double altura = 0;
  double totalA = 0;

  String? p;
  double peso = 0;
  double totalP = 0;

  for (int j = 1; j <= 25; j++) {
    stdout.write("Digite sua idade: ");
    i = stdin.readLineSync();
    idade = double.parse(i!);

    stdout.write("Digite sua altura: ");
    a = stdin.readLineSync();
    altura = double.parse(a!);

    stdout.write("Digite sua peso: ");
    p = stdin.readLineSync();
    peso = double.parse(p!);

    if (idade > 50) {
      totalI = totalI + 1;
    }

    if (idade >= 10 && idade <= 20) {
      totalA = totalA + altura;
    }

    if (peso < 40) {
      totalP = totalP + 1;
    }
  }
  print(
      "Quantidade de pessoas acima de 50 anos: $totalI \n Média das alturas de pessoas de 10 a 20 anos: ${totalA / 25} \n Porcentagem de pessoas com peso menor que 40 quilos: %${(totalP / 25) * 100}");
}
