import 'dart:io';

void main (){
  List<int> nota = []; List nomes = []; int pNota = 0; String pNome; int med = 0; int b = 1;
  for(int a = 0; a < 8;a++){
    print("Digite o nome do $bº aluno: "); String nome = stdin.readLineSync()!; nomes.add(nome); 
    print("Digite a nota de ${nomes[a]}: "); int valor = int.parse(stdin.readLineSync()!); nota.add(valor);
    b += 1;
    
  }
  for(int i = 0; i < nota.length;i++){
    pNota = nota[i];
    pNome = nomes[i];
    med += nota[i];
    print("Relatório de notas: \n Aluno -- Nota \n $pNome -- $pNota \n ");
  }
  
  print("Média da classe = ${med / nota.length}");
}