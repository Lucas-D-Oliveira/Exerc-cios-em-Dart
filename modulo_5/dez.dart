import 'dart:io';

void main() {
  List<double> numeros = [];
  double totalPares = 0;
  double totalPrimos = 0;

  for (int i = 1; i <= 10; i++) {
    stdout.write("Digite um número: ");
    double num = double.parse(stdin.readLineSync()!);
    numeros.add(num);

    bool primo = true;
    if (num <= 1) {
      primo = false;
    } else {
      for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) {
          primo = false;
          break;
        }
      }
    }

    if (primo) {
      totalPrimos += num;
    }

    if (num % 2 == 0) {
      totalPares += num;
    }
  }

  print("Soma dos números primos: $totalPrimos \n Soma dos números pares: $totalPares");
}