import 'dart:io';

void main() {
  int? canal;
  double quant = 0;
  bool verd = true;
  double c4 = 0;
  double c5 = 0;
  double c7 = 0;
  double c12 = 0;
  int pessoas = 0;

  while (verd) {
    stdout.write("Digite o canal que está assistindo: ");
    canal = int.parse(stdin.readLineSync()!);

    if (canal == 0) {
      break;
    }

    stdout.write("Digite quantas pessoas estão assistindo: ");
    pessoas = int.parse(stdin.readLineSync()!);

    switch (canal) {
      case 4:
        c4 += pessoas;
        break;

      case 5:
        c5 += pessoas;
        break;

      case 7:
        c7 += pessoas;
        break;

      case 12:
        c12 += pessoas;
        break;

      default:
        print("Escolha um canal válido");
    }
  }

  quant = c4 + c5 + c7 + c12;

  c4 = (c4 / quant) * 100;
  c5 = (c5 / quant) * 100;
  c7 = (c7 / quant) * 100;
  c12 = (c12 / quant) * 100;

  print("A média de audiência dos canais é: \n"
      "Canal 4: ${c4.toStringAsFixed(1)}%\n"
      "Canal 5: ${c5.toStringAsFixed(1)}%\n"
      "Canal 7: ${c7.toStringAsFixed(1)}%\n"
      "Canal 12: ${c12.toStringAsFixed(1)}%");
}
