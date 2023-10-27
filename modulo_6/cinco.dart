import 'dart:io';
void main() {
  List<int> logica = []; List<int> linguagem = []; List<int> procurados = []; int cod = 0;

for(int i = 1; i <= 15; i ++){
  print("Digite o código dos alunos matriculados em Lógica de prog(max. 15): "); cod = int.parse(stdin.readLineSync()!);
  logica.add(cod); 
  }

  for(int i = 1; i <= 10; i ++){
  print("Digite o código dos alunos matriculados em Linguagem de prog.(max. 10): "); cod = int.parse(stdin.readLineSync()!);
  linguagem.add(cod); 
  }

  for(int j = 0; j < logica.length; j++){
      if(linguagem.contains(logica[j])){
       procurados.add(logica[j]);
}
} 

    print("Matricula dos alunos cursando as duas diciplinas: $procurados"); 
}