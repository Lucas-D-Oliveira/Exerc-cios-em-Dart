import 'dart:io';

void main(){

 Map<String, List<String>> letras = {
    "alfabeto": [
      "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
      "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
      "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
    ],
  };

  int contL = 0; int contN = 0; int contE = 0;

print('Digite uma frase: '); String frase = stdin.readLineSync()!;

List listFrase = frase.split('');

for(int i = 0; i < listFrase.length; i ++){
  String carac = listFrase[i];
  if(letras["alfabeto"]!.contains(carac)){
    contL += 1;
  }

  else if(listFrase[i] == " "){
    contE += 1;
  }

  else {
    contN += 1;
  }
}

print("Quantidades de letras: $contL \n Quantidade de Números: $contN \n Quantidade de espaços: $contE");
}