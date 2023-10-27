import 'dart:io';

void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  
  
  List carac = frase.split(' ');
  int cont = 0;
  List result = List.generate(carac.length, (i) => null);
  bool p = true;
   
 for(int i = 0; i < carac.length;i ++){
  p = result.contains(carac[i]);
  if(p == false){
    result[i] = (carac[i]);
  }
}  
 result.removeWhere((result) => result == null);

for(int i = 0; i < result.length;i ++){
  cont = 0;
  for(int j = 0; j < carac.length;j ++){
  if(result[i] == carac[j]){
  cont += 1;
  }
  }
  print("Palavra: ${result[i]} aparece $cont vezes \n");
}

}