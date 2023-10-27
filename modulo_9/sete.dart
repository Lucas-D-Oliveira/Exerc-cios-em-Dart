import 'dart:io';

void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  bool p = true;
  String novafrase = frase.replaceAll(" ", "");
  novafrase = novafrase.trim();
  List carac = novafrase.split('');
  List result = List.generate(carac.length, (i) => null);
  int cont = 0;

for(int i = 0; i < carac.length;i ++){
  p = result.contains(carac[i]);
  if(p == false){
    result[i] = (carac[i]);
  cont += 1;
  }
}

  print("Quantidade de caracteres unicos: $cont");
}