import 'dart:io';
void main() {
  List grupo1 = []; List grupo2 = [];
  int? valor;

    for (int j = 0; j < 10; j++) {
      stdout.write('Digite os valores do grupo 1: \n');
      valor = int.tryParse(stdin.readLineSync()??"");
      
      grupo1.add(valor); 
  }
  for(int i = 0; i < grupo1.length; i++){
    int a = 1;
      if(grupo1[i] != null){
        grupo2.add(grupo1[i]);
      }
      else{
        grupo2.add(a);
      }
      
    }
print('$grupo1 \n $grupo2');
}