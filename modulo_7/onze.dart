import 'dart:math';
import 'dart:io';
void main(){
  List<List<int>>  provaM = List.generate(5, (i) => List.generate(8, (j) => Random().nextInt(5)));
  List<int> idades = List.generate(8, (_) => Random().nextInt(16) +10); List diciplina = [01, 02 ,03 ,04 ,05]; int cod = 0;  int cont = 0;
  int a = 0; int ida = 0; int aluno = 0; double med = 0; int somaid = 0; int nof = 0;
  
  print ('Digite o código da disciplina que deseja consultar: '); cod = int.parse(stdin.readLineSync()!);
  a = diciplina.indexOf(cod);
  print('\n');
  for(int i = 0; i < idades.length;i ++){
    stdout.write('${idades[i]} \t');
  }
  print('\n');

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 8; j++) {
      stdout.write('${provaM[i][j]} \t');
    }
    print("");
}

if (a != -1){
  
   for(int j = 0; j < idades.length; j++){
    if( idades[j] > 18 && idades[j] < 25){
      ida = j; 
      if(provaM[a][ida] > 2){

        cont += 1;
      }
    }
  } 
}
else {
      print('código de disciplina inváldo');
    }
    print('\n');

for(int i = 0; i < 5; i++){

  for(int j = 0; j < 8; j++){
  if( provaM[i][j] < 3){
   aluno = idades.indexOf(idades[j]);
    print('Indice do aluno : $aluno -- Código da disciplina: ${diciplina[i]}');

  }
}
}

for(int j = 0; j < 8; j++){
 
  for( int i = 0; i < 5; i++){
    if (provaM[i][j] == 0){
    somaid += idades[j];
    nof += 1;
  break;
  }
  }
}

med = somaid / nof;
print('Quantidade de alunos entre 18 e 25 anos quevfizeram mais de 2 provas: $cont \n Média das idades de alunos que não fizeram prova de ao menos 1 disciplina: $med' );
}