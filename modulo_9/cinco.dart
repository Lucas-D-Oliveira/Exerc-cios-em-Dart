import 'dart:io';

void main (){
  print("Digite uma frase: "); String frase = stdin.readLineSync()!;
  print("Digite uma frase: "); String frase2 = stdin.readLineSync()!;

String newfrase = frase.replaceAll(' ','');
String newfrase2 = frase2.replaceAll(' ','');
List<String> caracteres = newfrase.split('');
List<String> caracteres2 = newfrase2.split('');
bool? result;

print('\n$caracteres \n');
print('$caracteres2\n');

  if(caracteres.length != caracteres2.length){
    print('Não é permutação');
    result = false;
  }
  else{
  for(int i = 0; i < caracteres.length;i ++){
    result = caracteres2.contains(caracteres[i]);
    if(result == false)
    {
      print('Não é permutação');
      break;
    }
  }
}
  if(result == true)
    {
      print('É permutação');
      
    }
}
