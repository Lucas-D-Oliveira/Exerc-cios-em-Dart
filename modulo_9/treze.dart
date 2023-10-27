import 'dart:io';
void main (){
  bool roda = true; int rep = 0;

  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  while(roda){
    print("Digite o numero de repetições(max 5): "); rep = int.parse(stdin.readLineSync()!);
    if(rep > 0 && rep <= 5){
      print("Digite um numero de repetições válido");
      roda = false;
    }
  }
 
  

  List newfrase = []; 
  newfrase.add(frase);

for(int i = 0; i < rep;i ++){
stdout.write(' ${newfrase[0]} ');
}

 
}