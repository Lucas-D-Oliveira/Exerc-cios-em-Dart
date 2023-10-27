import 'dart:io';


List MED(List a){
  List med = [];
  double soma = 0;
  for(int x = 1; x < 5; x++){
    soma = 0;
    for(int y = 1; y <5;y++){
      soma += a[x][y];
    }
    med.add((soma / 4));
    
  }
  return med;

  }
void main(){
  List<List> matriz = List.generate(5, (i) => List.generate(7, (y) => 0)); 
  matriz[0][0] = "Alunos"; matriz[0][1] = "1º NOTA"; matriz[0][2] = "2º NOTA"; matriz[0][3] = "3º NOTA"; matriz[0][4] = "4º NOTA";
  matriz[0][5] = "MÉDIA"; matriz[0][6] = 'SITUAÇÃO';
  

  for(int x = 1; x < 5; x++){
     print('Digite o nome do aluno: '); String nom = stdin.readLineSync()!; matriz[x][0] = nom;
    }

     for(int x = 1; x < 5; x++){
    for(int y = 1; y < 5; y++){
    print('Digite o digite a $yº nota de ${matriz[x][0]}: '); double not = double.parse(stdin.readLineSync()!); matriz[x][y] = not;
  }
  }

  List? media = MED(matriz);
   int a = 0;
    for(int i = 1; i < 5; i++){
      matriz[i][5] = media[a];
      if(media[a] < 6){
        matriz[i][6] = 'Rec.';
      }
      else{
        matriz[i][6] = 'Apr.';
      }
      a += 1;
    }

for(int i = 0; i < 5; i++){
  for(int j = 0; j < 7; j++){
    if(i == 0){
stdout.write("${matriz[i][j]} \t");
    }
    else{
      stdout.write("--${matriz[i][j]}-- \t");
    }
    
  }
  print("");
}

}
