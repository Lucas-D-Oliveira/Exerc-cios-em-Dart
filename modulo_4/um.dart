import 'dart:io';
void main() {
  
  print("Digite a primeira nota:");
   String? nota1 = stdin.readLineSync();

  print("Digite a segunda nota:");
   String? nota2 = stdin.readLineSync();

   print("Digite a terceira nota:");
  String? nota3 = stdin.readLineSync();

print("Digite a quarta nota");
  String? nota4 = stdin.readLineSync();
  
  int n1 = int.parse(nota1!);
  int n2 = int.parse(nota2!);
  int n3 = int.parse(nota3!);
  int n4 = int.parse(nota4!);

  double media;
  
  media = (n1 + n2 + n3 + n4) / 4;

  if(media >=7){
print('Sua média é: $media, e você esta aprovado');
  }
    
    else{
      print('Sua média é: $media, e você esta reprovado' );
    }
  }
