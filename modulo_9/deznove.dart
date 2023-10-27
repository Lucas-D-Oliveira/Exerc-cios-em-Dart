import'dart:io';

void main (){

  Map<String, String> vogais = {
    'a': '1', 'A': '1', 'e': '2', 'E': '2',
    'i': '3', 'I': '3', 'u': '5', 'U': '5',
    'o': '4', 'O': '4',
  };
    
  

  print('Digite uma frase'); String frase = stdin.readLineSync()!;

  List nfrase = frase.split('');

  for (int i = 0; i < nfrase.length; i++) {
    String carac = nfrase[i];
    

    if (vogais.containsKey(carac)) {
      
      nfrase[i] = vogais[carac]!;
    }
  }
String rfrase = nfrase.join();

print(rfrase);
  
}