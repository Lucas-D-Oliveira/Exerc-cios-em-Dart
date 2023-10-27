import 'dart:io';

void main(){
List nomes = []; List codigo = []; List<double> precos = []; 
String name; double preco = 0; int cod = 0; double calc = 0;

  for(int i =1; i <= 4; i++){
    print("Nome do produto: ");  name = stdin.readLineSync()!; nomes.add(name);
    print("Código do produto: ");  cod = int.parse(stdin.readLineSync()!); codigo.add(cod);
    print("Preço do produto: ");  preco = double.parse(stdin.readLineSync()!); precos.add(preco);


  }
  List<double> novoPrecos = [...precos];

  for(int j = 0; j < precos.length; j++){
  

    if(codigo[j] % 2 == 0 && novoPrecos[j] > 1000){
      calc = novoPrecos[j];
      calc += novoPrecos[j] * 0.2;
      novoPrecos[j] = calc;
    }

    if(codigo[j] % 2 == 0){ 
      calc = novoPrecos[j];
      calc += novoPrecos[j] * 0.15;
      novoPrecos[j] = calc;
    }

    if(novoPrecos[j] > 1000){ 
      calc = novoPrecos[j];
      calc += novoPrecos[j] * 0.1;
      novoPrecos[j] = calc;
    }
}
for(int a = 0; a < precos.length; a++){
  print("\n Nome: ${nomes[a]} -- Código: ${codigo[a]} -- Preço inicial: ${precos[a]} -- Novo preço: ${novoPrecos[a]}");
}
}