import 'dart:io';

void main(){
int? idade;
List idades = [];
int quant = 0;
double mIdade = 0;
bool verd = true;

  while(verd){
    
    stdout.write("Digite uma idade> ");
    idade = int.parse(stdin.readLineSync()!);
if(idade == 0){
      break;
}
    idades.add(idade);
  }
  for(int i = 0; i < idades.length; i++){
    mIdade += idades[i]; 
  }
  quant = idades.length;
  print("A media da soma das idades digitadas é: ${mIdade / quant}");
}