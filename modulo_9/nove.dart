import 'dart:io';
void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  print("Digite um caracter: "); String carac = stdin.readLineSync()!;
  

  List newfrase = frase.split('');
  int cont = 0;

for(int i = 0; i < newfrase.length;i ++){
  
  if(newfrase[i] == carac){
  cont = i;
  break;
  }
}

  print("Indice da primeira aparição do caracter $cont");
}