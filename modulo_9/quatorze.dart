import 'dart:io';

void main(){

  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  List nfrase = [];
  List vogais = ['a','e','i','o','u'];
  String frasef = '';

  nfrase = frase.split('');
  for(int i = 0; i < vogais.length; i ++){
    for(int j = 0; j <nfrase.length; j++){
      if(vogais[i] == nfrase[j]){
         nfrase[j] = nfrase[j].toUpperCase();
      }
else{
      nfrase[j] = nfrase[j].toLowerCase();
    }
      
    }
  }
  for(int i = 0; i < nfrase.length; i++){
    frasef += nfrase[i];
  }
  print(frasef);
}