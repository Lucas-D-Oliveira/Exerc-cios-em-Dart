import 'dart:io';

void main (){
  List<int> nota1 = []; List<int> nota2 = []; List nomes = [];
   int cont1 = 0; int cont2 = 0; int cont3 = 0; int med1 = 0; int med2 = 0; double medA = 0; String? situ;
  for(int a = 1; a <= 6;a++){
    print("Digite o nome do aluno: "); String nome = stdin.readLineSync()!; nomes.add(nome); 
    print("Digite a nota da 1ª prova: "); int valor = int.parse(stdin.readLineSync()!); nota1.add(valor);
    print("Digite a nota da 2ª prova: "); valor = int.parse(stdin.readLineSync()!); nota2.add(valor);
    
  }
  for(int i = 0; i < nota1.length;i++){
    medA = 0;
    med1 += nota1[i];
    med2 += nota2[i];
    medA = (nota1[i] + nota2[i]) / 2;
    
    if(medA >= 7){
      situ = "Aprovado";
      cont1 += 1;
    }
    if(medA >= 5 && medA < 7){
      situ = "Exame";
      cont2 += 1;
    }
    if(medA < 5){
      situ = "Reprovado";
      cont3 += 1;
    }

    print("Relatório de notas: \n Aluno -- 1º Prova -- 2º Prova -- Média -- Situação \n ${nomes[i]} -- ${nota1[i]} -- ${nota2[i]} -- $medA -- $situ  \n ");
  }
  double perA = 0; double perE = 0; double perR = 0;
  perA = (cont1 / nomes.length) * 100;
  perE = (cont2 / nomes.length) * 100;
  perR = (cont3 / nomes.length) * 100;

  print("Média da classe: 1º Prova = ${med1 / nota1.length}-- 2º Prova = ${med2 / nota1.length}" );
  print("Percentual dos alunos: \n Aprovados:${perA.toStringAsFixed(2)}% \n Exame:${perE.toStringAsFixed(2)}% \n Reprovados:${perR.toStringAsFixed(2)}%" );
}