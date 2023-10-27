import 'dart:io';

void main(){
List nomes = []; List locados = [];
int lgrat = 0;

while(nomes.length < 3){
print("Digite seu nome: "); String nome = stdin.readLineSync()!; nomes.add(nome);
print("Dite quantos DVDs você já alugou: "); int valor = int.parse(stdin.readLineSync()!); locados.add(valor);
}

for(int i = 0; i < nomes.length; i++){
  double a = 0;
  if(locados[i] >= 10){
    a = (locados[i] / 10);
    lgrat = a.toInt();
    
  }

  print("Número de locações grátis: ${nomes[i]} = $lgrat \n");
}

}