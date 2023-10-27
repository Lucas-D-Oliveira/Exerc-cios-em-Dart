import 'dart:io';

void main() {
  List idades = [];
  bool verificador = true;
  int idade = 0;
  int mulherSal = 0;
  List lSal = [];
  List lSexo = [];
  double mSal = 0;
  int quant = 0;

  while (verificador) {
    stdout.write("\n Qual sua idade? \n");
    idade = int.parse(stdin.readLineSync()!);

    if (idade < 0) {
      break;
    }
    idades.add(idade);

    stdout.write("\n Qual seu sexo? \n (M)Mulher \n (H)Homem ");
    String sexo = stdin.readLineSync()!;
    lSexo.add(sexo);

    stdout.write("Qual seu salário? \n");
    double sal = double.parse(stdin.readLineSync()!);
    lSal.add(sal);
    if (sexo == "M" || sexo == "m" || sexo == "H" || sexo == "h") {
      switch (sexo) {
        case "M": 
        case "m":
          if (sal <= 200) {
            mulherSal = mulherSal + 1;
          }
      }
    }
  }
  int iMaior = idades[0];
  int iMenor = idades[0];

  for (int a = 1; a < idades.length; a++) {
    if (idades[a] < iMenor) {
      iMenor = idades[a];
    }
    if (idades[a] > iMaior) {
      iMaior = idades[a];
    }
  }

  double sMaior = lSal[0];
  double sMenor = lSal[0];
  int midade = idades[0];
  String? mSexo = lSexo[0];

  for (int b = 1; b < idades.length; b++) {
    if (lSal[b] < sMenor) {
      sMenor = lSal[b];
      midade = idades[b];
      mSexo = lSexo[b];
      print(b);
    }
    if (lSal[b] > sMaior) {
      sMaior = lSal[b];
    }
  }

  for (int i = 0; i < lSal.length; i++) {
    mSal += lSal[i];
    quant = lSal.length;
  }

  print(
      " Média dos salários ${mSal = mSal / quant} \n A menor idade do grupo é $iMenor e a maior é $iMaior \n Quantidade de mulheres com salários até 200 reias: $mulherSal \n A pessoa que possui menor salário é: $mSexo de $midade anos");
}
