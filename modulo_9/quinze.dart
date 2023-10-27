import'dart:io';

void main (){

  Map<String,String> num = {
    '0' : 'zero', '1' : 'um', '2' : 'dois', '3' : 'três', '4' : 'quatro', '5' : 'cinco', '6' : 'seis', '7' : 'sete', '8' : 'oito', '9' : 'nove',
  };
    
  

  print('Digite uma frase'); String frase = stdin.readLineSync()!;

  List nfrase = frase.split('');

  for (int i = 0; i < nfrase.length; i++) {
    String caractere = nfrase[i];
    

    if (num.containsKey(caractere)) {
      
      nfrase[i] = num[caractere]!;
    }
  }
String rfrase = nfrase.join();

print(rfrase);
  
}