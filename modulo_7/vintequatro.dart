import 'dart:math';
import 'dart:io';

void main(){
int maior = 0;
int somaG = 0; late int valor;
int mP = 0;
int total = 0;
  List<List> matriz = List.generate(7, (index) => List.generate(12, (index) => Random().nextInt(20)+1));
matriz[0][0] = 'Arm.'; matriz[1][0] = '1ª'; matriz[2][0] = '2ª';matriz[3][0] = '3ª'; matriz[4][0] = '4ª'; matriz[5][0] = '5ª'; matriz[6][0] = 'total';
 matriz[6][11] = 0;
  matriz[0][1] = 'A';matriz[0][2] = 'B'; matriz[0][3] = 'C'; matriz[0][4] = 'D'; matriz[0][5] = 'E'; matriz[0][6] = 'F'; matriz[0][7] = 'G'; matriz[0][8] = 'H'; matriz[0][9] = 'I'; matriz[0][10] = 'J'; matriz[0][11] = 'Total';
int menor = matriz[1][1];

  List<List> produto = List.generate(2, (index) => List.generate(10, (index) => Random().nextInt(100)+1));
  produto[0][0] = "A"; produto[0][1] = "B"; produto[0][2] = "C"; produto[0][3] = "D"; produto[0][4] = "E"; produto[0][5] = "F"; produto[0][6] = "G"; produto[0][7] = "H"; produto[0][8] = "I"; produto[0][9] = "J";


for(int i = 1; i < 6;i++){
  somaG = 0;
  for(int j = 1; j < 11; j++){
valor = matriz[i][j];
somaG += valor;
  }
  matriz[i][11] = somaG;
  matriz[6][11] += matriz[i][11];
}

for(int j = 1; j < 11;j++){
  somaG = 0;
  for(int i = 1; i < 6; i++){
valor = matriz[i][j];
somaG += valor;

  }
  matriz[6][j] = somaG;
}




for (int i = 1; i < 6; i++) {
    for (int j = 1; j < 11; j++) {
      if(matriz[i][j] > maior){
        maior = matriz[i][j];
        if(mP == 11){
          mP = 10;
        }
        mP = j;
      }
    }
  }
print("O maior produto em estoque é: ${produto[0][mP]}, e seu preço é: ${produto[1][mP]} \n" );

for (int i = 1; i < 6; i++) {
    for (int j = 1; j < 11; j++) {
      if(matriz[i][j] < menor){
        menor = matriz[i][j];
        if(mP == 11){
          mP = 10;
        }
        mP = j;
      }
    }
  }
print("O menor produto em estoque é: ${produto[0][mP]}, e seu preço é: ${produto[1][mP]} \n" );

for (int i = 1; i < 6; i++) {
  for(int j = 0; j < 10;j++){
    valor = produto[1][j];
  }
      print("O custo do armazem $iº é: ${matriz[i][11] * valor} ");
  }

for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 12; j++) {
      stdout.write('${matriz[i][j]} \t');
    }

    print("");
  }
 
 print('\n');

 for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write('${produto[i][j]} \t');
    }

    print("");
  }

}