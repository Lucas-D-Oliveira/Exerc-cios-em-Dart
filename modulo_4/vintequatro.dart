
import 'dart:io';

void main() {
  print("Informe o valor do produto:");
  String? v = stdin.readLineSync();

  print(
      "Informe a catégoria do produto: \n (1)Limpeza \n (2)Alimentação \n (3)Veatuário");
  String? c = stdin.readLineSync();

  print(
      "Infome a situação do produto: \n (R)Necessita de refrigeração \n (N)Não necessita de refrigeração");

  String? sit = stdin.readLineSync();

  if ((sit == "R" || sit == "N") && (c == "1" || c == "2" || c == "3")) {
    double valorP = double.parse(v!);
    int categoria = int.parse(c!);

    if (valorP <= 25) {
      switch (categoria) {
        case 1:
          valorP = valorP + (valorP * 0.05);
          break;

        case 2:
          valorP = valorP + (valorP * 0.08);
          break;

        case 3:
          valorP = valorP + (valorP * 0.10);
          break;
      }
    }

    if (valorP > 25) {
      switch (categoria) {
        case 1:
          valorP = valorP + (valorP * 0.12);
          break;

        case 2:
          valorP = valorP + (valorP * 0.15);
          break;

        case 3:
          valorP = valorP + (valorP * 0.18);
          break;
      }
    }

    if (categoria == 2 || sit == "R") {
      valorP = valorP - (valorP * 0.05);
    }

    else{
      valorP = valorP - (valorP * 0.08);
    }

    if(valorP >= 120){
      print("$valorP, Caro");
    }

    if(valorP > 50  && valorP <= 120){
      print("$valorP, Normal");
    }

    else{
      print("$valorP, Barato");
    }
  }

  else {
    print("Seleção inválida");
  }
}
