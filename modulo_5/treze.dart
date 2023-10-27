import 'dart:io';

void main() {
  List<double> peso31 = [];
  List<double> peso21 = [];
  List<double> peso11 = [];
  List<double> peso1 = [];
  double med1 = 0;
  double med2 = 0;
  double med3 = 0;
  double med4 = 0;
  double medg = 0;
  int quant = 0;

  for (int i = 1; i <= 15; i++) {
    stdout.write("\n Digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("\n Digite seu peso:");
    double peso = double.parse(stdin.readLineSync()!);

    if (idade > 31) {
      peso31.add(peso);
    }

    if (idade >= 21 && idade <= 30) {
      peso21.add(peso);
    }

    if (idade >= 11 && idade <= 20) {
      peso11.add(peso);
    } 
    else {
      peso1.add(peso);
    }
  }
  for (int i = 0; i < peso31.length; i++) {
    quant = peso31.length;
    medg = medg += peso31[i];
    med4 = medg / quant;
  }

  for (int i = 0; i < peso21.length; i++) {
    medg = 0;
    quant = peso21.length;
    medg = medg += peso21[i];
    med3 = medg / quant;
  }

  for (int i = 0; i < peso11.length; i++) {
    medg = 0;
    quant = peso11.length;
    medg = medg += peso11[i];
    med2 = medg / quant;
  }

  for (int i = 0; i < peso1.length; i++) {
    medg = 0;
    quant = peso1.length;
    medg = medg += peso1[i];
    med1 = medg / quant;
  }
  print(
      " Média de peso entre 1 a 10 anos: $med1 \n Média de peso entre 11 a 20 anos: $med2 \n Média de peso entre 21 a 30 anos: $med3 \n Média de peso acima de 31 anos: $med4 \n");
}
