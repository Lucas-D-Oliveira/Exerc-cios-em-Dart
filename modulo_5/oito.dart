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

  String? olho;
  String? cabelo;
  double total4 = 0;

  for (int j = 1; j <= 20; j++) {
    stdout.write("Digite sua idade: ");
    i = stdin.readLineSync();
    idade = double.parse(i!);

    stdout.write("Digite sua altura: ");
    a = stdin.readLineSync();
    altura = double.parse(a!);

    stdout.write("Digite sua peso: ");
    p = stdin.readLineSync();
    peso = double.parse(p!);

    stdout.write("Digite a letra que corresponde a cor de seu olho: \n (A)Azul \n (V)verde \n (P)Preto \n (C)Castanho \n");
    olho = stdin.readLineSync();
    

    stdout.write("Digite a letra que corresponde a a cor de seu cabelo: \n (P)Preto \n (C)Castanho \n (L)Loiro \n (R)Ruivo \n");
    cabelo = stdin.readLineSync();
    
    if (idade > 50 && peso < 60) {
      total1 = total1 + 1;
    }

    if (altura < 1.50) {
      total2 = total2 + altura;
    }

    if (olho == "A") {
      total3 = total3 + 1;
    }

    if (cabelo == "R" && olho != "A") {
      total4 = total4 + 1;
    }

  }
  print(
      "Quantidade de pessoas acima de 50 anos e com menos de 60 quilos: $total1 \n Média das alturas de pessoas inferiores a 1.50: ${total2 / 20} \n Porcentagem de pessoas com peso menor que 40 quilos: %${(total3 / 20) * 100} \n Quantidade de pessoas ruivas que não possuem olhos azuis: $total4");
}
