import 'dart:io';


 bool? verif(double num){

if(num >= 0){
  
  return true;
}
else{
  return false;
}
}

void main(){


  print("Digite um número "); double num = double.parse(stdin.readLineSync()!); 


bool? result = verif(num);
if(result == true){
    print("Número positivo");
}
else{
  print("Número negativo");
}
}
