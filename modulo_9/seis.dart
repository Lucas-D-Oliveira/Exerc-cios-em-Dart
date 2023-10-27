import 'dart:io';

void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  

List<String> carac = frase.split('');
List<String> newcarac = [];


print('\n$carac \n');

  
  for(int i = 0; i < carac.length;i ++){
    if(carac[i] != " "){
      newcarac.add(carac[i]);
      newcarac.add(carac[i]);
    }
    else{
      newcarac.add(carac[i]);
    } 
  }
  print('\n$newcarac \n');
  String result = newcarac.join();
  print('\n$result \n');

}
 
      
    