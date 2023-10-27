import 'dart:io';

void main() {
  List<List> matriz = List.generate(4, (_) => List.generate(6, (_) => 0));
   double somaS = 0; 

  matriz[0][0] = 'Mês'; matriz[1][0] = '1'; matriz[2][0] = '2'; matriz[3][0] = 'total';
  matriz[3][0] = 'Total'; matriz[3][1] = '>>'; matriz[3][2] = '>>'; matriz[3][3] = '>>'; matriz[3][4] = '>>';
  matriz[0][1] = '1º Sem';matriz[0][2] = '2º Sem'; matriz[0][3] = '3º Sem'; matriz[0][4] = '4º Sem'; matriz[0][5] = 'Total';

  for (int i = 1; i < 3; i++) {
    somaS = 0;
    for (int j = 1; j < 5; j++) {
      print('Digite o valor da $jº semana do mês $i: ');
      double valor = double.parse(stdin.readLineSync()!);
      
      matriz[i][j] = valor;
       somaS += valor;
      matriz[i][5] = somaS;  
    }
    matriz[3][5] += matriz[i][5];
  }
  
for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 6; j++) {
      stdout.write('${matriz[i][j]} \t');
    }
    print("");
}
  
    
     

  }
