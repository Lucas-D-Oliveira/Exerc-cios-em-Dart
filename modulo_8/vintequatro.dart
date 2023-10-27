import 'dart:io';
int encontrarIndice(List<List> matriz, double valor) {
  for (int i = 0; i < matriz.length; i++) {
    if (matriz[i][1] == valor) {
      return i;
    }
  }
  return -1; 
}

List? Maior(List a){
  double maior = a[1][1];
  
  List m1 = [];
  for(int i = 0; i < 12; i++){
    if(maior < a[i][1]){
      maior = a[i][1];
      
    }
     
  }
  m1.add(maior);
  
  return m1;
}

List? Menor(List a){
  double menor = a[1][1]; 
  
  List m2 = [];
 
  for(int i = 0; i < 12; i++){
    if(menor > a[i][1]){
      menor = a[i][1];
     
      
    }
  }
   m2.add(menor);
  
  return m2;
}

void main(){
  List<List> matriz = List.generate(12, (i) => List.generate(2, (y) => 0.0)); 
  matriz[0][0] = "Janeiro"; matriz[1][0] = "Fevereiro"; matriz[2][0] = "Março"; matriz[3][0] = "Abril"; matriz[4][0] = "Maio"; matriz[5][0] = "Junho"; matriz[6][0] = "Julho"; 
  matriz[7][0] = "Agosto"; matriz[8][0] = "Setembro"; matriz[9][0] = "Outubro"; matriz[10][0] = "Novembro"; matriz[11][0] = "Dezembro";

  for(int i = 0; i < 12; i++){
    print('Digite a temperatura média do mês de ${matriz[i][0]}: ');
    double t = double.parse(stdin.readLineSync()!); 
    matriz[i][1] = t;
  }

  List? result = Maior(matriz);
  List? result2 = Menor(matriz);

   int indice = encontrarIndice(matriz, result![0]);
  int indice2 = encontrarIndice(matriz, result2![0]);

  print("Maior temperatura foi ${result[0]}, referente ao mês ${matriz[indice][0]}");
    print("Menor temperatura foi ${result2[0]}, referente ao mês ${matriz[indice2][0]}");
}
