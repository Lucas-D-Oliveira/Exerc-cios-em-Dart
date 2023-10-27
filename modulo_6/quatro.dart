import 'dart:io';
void main() {
  List<int> numeros = []; List<int> procurados = []; int itemProcurado = 30;

for(int i = 1; i <= 15; i ++){
  print("Digite 15 valores: "); int valor = int.parse(stdin.readLineSync()!);
  numeros.add(valor); 
  }

  for(int j = 0; j < numeros.length; j++){
      if(itemProcurado == numeros[j]){
       procurados.add(j);
}
} 

    print("O número procurado está nos indices $procurados da lista."); 
}