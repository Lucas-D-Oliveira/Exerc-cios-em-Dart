import 'dart:io';

void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  print("Digite um caracter: "); String carac = stdin.readLineSync()!;
  bool p;

 
  int cont = 0;

for(int i = 0; i < frase.length;i ++){
  p = frase[i].contains(carac);
  if(p == true){
  cont += 1;
  }
}

  print("Vezes que o caracter aparece: $cont");
}