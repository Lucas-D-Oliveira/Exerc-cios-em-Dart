import 'dart:io';
void main(){

  print('Digite uma frase'); String frase = stdin.readLineSync()!;

   List palavras = frase.split(" ");

   String troca ='';

   troca = palavras[0];
   palavras[0] = palavras.last;
   palavras.last = troca; 

   String rfrase = palavras.join(' ');
   print(rfrase);
  
  
  }