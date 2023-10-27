import 'dart:io';

void main() {
  int opNao = 0;
  int opSim = 0;
  double homem = 0;
  int mulherSim = 0;
  double homemNao = 0;
  int respV = 0;

  while (respV < 2) {
    stdout.write("\n Qual seu sexo? \n (M)Mulher \n (H)Homem ");
    String sexo = stdin.readLineSync()!;

    stdout.write("\n Gostou do novo produto?: \n (S)Sim \n (N)Não \n");
    String op = stdin.readLineSync()!;

    if ((op == "S" || op == "s" || op == "N" || op == "n") &&
        (sexo == "M" || sexo == "m" || sexo == "H" || sexo == "h")) {
      switch (op) {
        case "S": 
        case "s":
          opSim = opSim + 1;
          if (sexo == "M" || sexo == "m") {
            mulherSim = mulherSim + 1;
          } else {
            homem = homem + 1;
          }
          break;

        case "N":  
        case "n":
          opNao = opNao + 1;
          if (sexo == "H" || sexo == "h") {
            homemNao = homemNao + 1;
          }
          break;
      }
      respV += 1;
    } else {
      print("Opção inválida");
    }
  }
  homem = homem + homemNao;
  print(
      " Número de pessoas que responderam sim: $opSim \n Número de pessoas que responderam Não: $opNao \n Número de mulheres que responderam sim: $mulherSim \n Porcentagem de homens que responderam não em relação a todos os homens da pesqusia: ${(homemNao / homem) * 100}%");
}
