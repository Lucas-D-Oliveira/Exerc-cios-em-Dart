import 'dart:io';

void main() {
  print("Digite o nome do produto");
  String? nome = stdin.readLineSync();

  print("Digite o preço do produto:");
  String? v = stdin.readLineSync();
  int vProd = int.parse(v!);

  print("Digite o código de origem do produto:");
  String? c = stdin.readLineSync();
  int cProd = int.parse(c!);

  String origem = '';

  if (cProd >= 10 && cProd < 20) {
    origem = "Sudeste";
  } else if (cProd > 21 && cProd <= 30) {
    origem = "Sudeste";
  } else {
    switch (cProd) {
      case 1:
        origem = "Sul";
        break;

      case 2:
        origem = "Norte";
        break;

      case 3:
        origem = "Leste";
        break;

      case 4:
        origem = "Oeste";
        break;

      case 5:
      case 6:
        origem = "Nordeste";
        break;

      case 7:
      case 8:
      case 9:
        origem = "Sudeste";
        break;

      default:
        print("Número inválido.");
        return;
    }
  }

  print("Nome do Produto: $nome, Valor: $vProd, Origem: $origem.");
}
