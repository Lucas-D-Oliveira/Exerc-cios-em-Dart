import 'dart:io';

void main() {
  List<List<String?>> matriz = List.generate(2, (_) => List.generate(6, (_) => null));
  double medA = 0;  double somaN = 0; double somaG = 0; double medT = 0; String? situ;

  for (int i = 0; i < 2; i++) {
    print('Digite um valor nome do aluno: ');
    String nome = stdin.readLineSync()!;
      matriz[i][0] = nome;

    for (int j = 1; j < 6; j++) {
      print('Digite o valor da $j nota: ');
      String valor = stdin.readLineSync()!;
      matriz[i][j] = valor;
       somaG += double.parse(valor);

    }
  }

  for (int i = 0; i < 2; i++) {
      somaN = 0;
    for (int j = 1; j < 6; j++) {
      String? valor = matriz[i][j];
     somaN += double.parse(valor!);
     medA = somaN / 5; 
     if(medA > 7){
      situ = "Aprovado";
     }
     if(medA >= 5 && medA < 7){
      situ = "Exame";
     }
     if(medA < 5){
      situ = "Reprovado";
     }

      }
      print('Aluno: ${matriz[i][1]} -- Média: $medA -- $situ');
    }
    medT = somaG / 10;
     print( 'Média da classe: $medT');

  }


