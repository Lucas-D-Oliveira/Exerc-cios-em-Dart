import 'dart:io';

void main(){
  print('Digite uma frase: '); String frase = stdin.readLineSync()!;
  List orig = frase.split('');
  List vogais = [];
  List indice = [];

  for(int i = 0; i < orig.length; i++){
    if(orig[i] == 'a' || orig[i] == 'e' || orig[i] == 'i' || orig[i] == 'o' || orig[i] == 'u' ){
      indice.add(i);
      vogais.add(orig[i]);
    }
  }

 for(int i = 0; i < orig.length; i++){
    if(orig[i] == 'a' || orig[i] == 'e' || orig[i] == 'i' || orig[i] == 'o' || orig[i] == 'u' ){
      orig.remove(orig[i]);
    }
  }

print('$orig \n');

  for (int i = 0; i < vogais.length; i++) {
    orig.insert(indice[i], vogais[i]);
  }

  print(orig.join());

}